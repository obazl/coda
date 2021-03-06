open Core
open Async

let run_cmd dir prog args =
  [%log' spam (Logger.create ())]
    "Running command (from %s): %s" dir
    (String.concat (prog :: args) ~sep:" ") ;
  Process.create_exn ~working_dir:dir ~prog ~args ()
  >>= Process.collect_output_and_wait

let run_cmd_or_error dir prog args =
  let open Process.Output in
  let%bind output = run_cmd dir prog args in
  let print_output () =
    let indent str =
      String.split str ~on:'\n'
      |> List.map ~f:(fun s -> "    " ^ s)
      |> String.concat ~sep:"\n"
    in
    print_endline "=== COMMAND ===" ;
    print_endline
      (indent
         ( prog ^ " "
         ^ String.concat ~sep:" "
             (List.map args ~f:(fun arg -> "\"" ^ arg ^ "\"")) )) ;
    print_endline "=== STDOUT ===" ;
    print_endline (indent output.stdout) ;
    print_endline "=== STDERR ===" ;
    print_endline (indent output.stderr) ;
    Writer.(flushed (Lazy.force stdout))
  in
  match output.exit_status with
  | Ok () ->
      return (Ok output.stdout)
  | Error (`Exit_non_zero status) ->
      let%map () = print_output () in
      Or_error.errorf "command exited with status code %d" status
  | Error (`Signal signal) ->
      let%map () = print_output () in
      Or_error.errorf "command exited prematurely due to signal %d"
        (Signal.to_system_int signal)

let run_cmd_exn dir prog args =
  match%map run_cmd_or_error dir prog args with
  | Ok output ->
      output
  | Error error ->
      Error.raise error
