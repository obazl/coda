opam = struct(
    opam_version = "2.0",
    pins = struct(
        paths = {
            "async_kernel" : "src/external/async_kernel",
            "base58"       : "src/external/coda_base58",
            "graphql_ppx"  : "src/external/graphql_ppx",
            "extlib"       : "src/external/ocaml-extlib",
            "rpc_parallel" : "src/external/rpc_parallel",
            # "sodium"       : "src/external/ocaml-sodium"
        },
        versions = {
            "digestif" : "0.9.0"
        }
    ),
    packages = {
        "alcotest": "1.1.0", # graphql_ppx
        "angstrom": "0.11.2",
        "asetmap": "0.8.1",
        "astring": "0.8.3",
        "async": "v0.12.0",
        "async_extra": "v0.12.0",
        "async_kernel": "v0.12.0",
        "async_rpc_kernel": "v0.12.0",
        "async_ssl": "v0.12.0",
        "async_unix": "v0.12.0",
        "base": "v0.12.0",
        "base58": "0.1.0",
        "base64": "3.4.0",
        "base_bigstring": "v0.12.0",
        "base_quickcheck": "v0.12.1",
        "bigarray": "[distributed with Ocaml]",
        "bignum": "v0.12.0",
        "bigstringaf": "0.5.0",
        "bin_prot": "v0.12.0",
        "biniou": "1.2.0",
        "bisect_ppx": "2.4.1",
        "bisect_ppx.runtime": "2.4.1",
        "bitstring": "3.1.1",
        "bitstring.ppx": "3.1.1",
        "bytes": "[distributed with OCaml 4.02 or above]",
        "camlp4": "4.07+1",
        "camomile": "1.0.1",
        "caqti": "1.2.0",
        "caqti-async": "1.2.0",
        "caqti-driver-postgresql": "1.2.0",
        "cmdliner": "1.0.3",
        "cohttp": "2.1.2",
        "cohttp-async": "2.1.1",
        "conduit": "1.4.0",
        "conduit-async": "1.4.0",
        "conf-g++": "1.0",
        "conf-gmp": "1",
        # "conf-libssl": "2",
        "conf-m4": "1",
        "conf-openssl": "1",
        "conf-perl": "1",
        "conf-pkg-config": "1.1",
        "conf-postgresql": "1",
        "conf-which": "1",
        "configurator": "v0.11.0",
        "core": "v0.12.1",
        "core_bench": "v0.12.0",
        "core_bench.inline_benchmarks": "v0.12.0",
        "core_extended": "v0.12.0",
        "core_kernel": "v0.12.3",
        "core_kernel.hash_heap": "v0.12.0", # opam: "v0.12.3",
        "cppo": "1.6.5",
        "cppo_ocamlbuild": "1.6.0",
        "crunch": "3.0.0",
        "ctypes": "0.17.1",
        "ctypes.foreign": "0.17.1", # opam: "0.4.0",
        "ctypes.stubs": "0.17.1", # opam: "0.4.0",
        # "depext.transition",
        "digestif": "0.9.0",
        "digestif.c": "0.9.0",
        # "digestif.opam": "0.9.0",
        "dune": "2.7.1",
        "dune-configurator": "2.5.1",
        "dune-private-libs": "2.5.1",
        "dynlink": "[distributed with Ocaml]",
        "easy-format": "1.3.1",
        "eqaf": "0.2",
        "extlib": "1.7.6-3-g9bf669c", # opam: 1.7.7
        "fieldslib": "v0.12.0",
        "fmt": "0.8.6",
        "fpath": "0.7.2",
        "graphql": "0.9.0",
        "graphql-async": "0.9.0",
        "graphql-cohttp": "0.12.1",
        "graphql_parser": "0.12.2",
        "incremental": "v0.12.0",
        "integers": "0.4.0",
        "ipaddr": "3.1.0",
        "jane-street-headers": "v0.12.0",
        "jbuilder": "1.0+beta20.2",
        "jemalloc": "0.2",
        "js_of_ocaml": "3.6.0",
        "js_of_ocaml-compiler": "3.6.0",
        "js_of_ocaml-ppx": "3.6.0",
        "js_of_ocaml-toplevel": "3.6.0",
        "jsonm": "1.0.1",
        "jst-config": "v0.12.0",
        "lambda-term": "1.13",
        "lens": "1.2.3",
        "lens.ppx_deriving": "1.2.3",
        "logs": "0.7.0",
        "lwt": "4.2.1",
        "lwt_log": "1.1.0",
        "lwt_react": "1.1.2",
        "macaddr": "3.1.0",
        "magic-mime": "1.1.2",
        "menhir": "20181113",
        "merlin": "3.2.2",
        "mmap": "1.1.0",
        "num": "1.1",
        "ocaml": "4.07.1",
        "ocaml-base-compiler": "4.07.1",
        "ocaml-compiler-libs": "v0.11.0",
        "compiler-libs.common": "[distributed with Ocaml]", # "v0.11.0",
        "ocaml-config": "1",
        "ocaml-migrate-parsetree": "1.7.3",
        "ocamlbuild": "0.14.0",
        "ocamlfind": "1.8.1",
        "ocamlformat": "0.9",
        "ocamlgraph": "1.8.8",
        "ocp-indent": "1.7.0",
        "ocplib-endian": "1.0",
        "octavius": "1.2.0",
        "opam-depext": "1.1.2",
        "ounit2": "2.2.3",
        "parsexp": "v0.12.0",
        "postgresql": "4.5.0",
        "ppx_assert": "v0.12.0",
        "ppx_assert.runtime-lib": "v0.12.0",
        "ppx_base": "v0.12.0",
        "ppx_bench": "v0.12.0",
        "ppx_bench.runtime-lib": "v0.12.0",
        "ppx_bin_prot": "v0.12.1",
        "ppx_compare": "v0.12.0",
        "ppx_compare.runtime-lib": "v0.12.0",
        "ppx_custom_printf": "v0.12.0",
        "ppx_derivers": "1.2.1",
        "ppx_deriving": "4.4.1",
        "ppx_deriving.api": "n/a", # opam: "4.4.1",
        "ppx_deriving.enum": "n/a", # opam: "4.4.1",
        "ppx_deriving.eq": "n/a", # opam: "4.4.1",
        "ppx_deriving.make": "n/a", # opam: "4.4.1",
        "ppx_deriving.ord": "n/a", # opam: "4.4.1",
        "ppx_deriving.std": "n/a", # opam: "4.4.1",
        "ppx_deriving.runtime": "n/a", # opam: "4.4.1",
        "ppx_deriving.show": "n/a", # opam: "4.4.1",
        "ppx_deriving_yojson": "n/a", # opam: "3.5.2",
        "ppx_deriving_yojson.runtime": "n/a", # opam: "3.5.2",
        "ppx_enumerate": "v0.12.0",
        "ppx_enumerate.runtime-lib": "v0.12.0",
        "ppx_expect": "v0.12.0",
        "ppx_expect.collector": "v0.12.0",
        "ppx_fail": "v0.12.0",
        "ppx_fields_conv": "v0.12.0",
        "ppx_hash": "v0.12.0",
        "ppx_hash.runtime-lib": "v0.12.0",
        "ppx_here": "v0.12.0",
        "ppx_inline_test": "v0.12.0",
        "ppx_inline_test.runtime-lib": "v0.12.0",
        "ppx_jane": "v0.12.0",
        "ppx_js_style": "v0.12.0",
        "ppx_let": "v0.12.0",
        "ppx_module_timer": "v0.12.0",
        "ppx_module_timer.runtime": "v0.12.0",
        "ppx_optcomp": "v0.12.0",
        "ppx_optional": "v0.12.0",
        "ppx_pipebang": "v0.12.0",
        "ppx_sexp_conv": "v0.12.0",
        "ppx_sexp_conv.runtime-lib": "v0.12.0",
        "ppx_sexp_message": "v0.12.0",
        "ppx_sexp_value": "v0.12.0",
        "ppx_stable": "v0.12.0",
        "ppx_tools": "5.1+4.06.0",
        "ppx_tools_versioned": "5.4.0",
        "ppx_tools_versioned.metaquot_402": "5.4.0",
        "ppx_typerep_conv": "v0.12.0",
        "ppx_variants_conv": "v0.12.0",
        "ppxfind": "1.4",
        "ppxlib": "0.8.1",
        "ppxlib.metaquot": "0.8.1",
        "prometheus": "0.5",
        "protocol_version_header": "v0.12.0",
        "ptime": "0.8.5",
        "re": "1.9.0",
        "re2": "v0.12.1",
        "react": "1.2.1",
        "result": "1.3",
        "rpc_parallel": "v0.12.0",
        "rresult": "0.6.0",
        # "seq.base",
        "sexp_diff_kernel": "v0.12.0",
        "sexplib": "v0.12.0",
        "sexplib0": "v0.12.0",
        # "sodium": "0.6.0",
        "spawn": "v0.13.0",
        "splittable_random": "v0.12.0",
        "stdio": "v0.12.0",
        "stdlib-shims": "0.1.0",
        "stringext": "1.5.0",
        "textutils": "v0.12.0",
        "textutils_kernel": "v0.12.0",
        "time_now": "v0.12.0",
        "topkg": "1.0.0",
        "typerep": "v0.12.0",
        "uchar": "0.0.2",
        "unix": "[distributed with Ocaml]",   # ocamlfind
        "uri": "2.2.1",
        "utop": "2.3.0",
        "uutf": "1.0.2",
        "variantslib": "v0.12.0",
        "yojson": "1.7.0",
        "zarith": "1.7",
        "zarith_stubs_js": "v0.13.0",
        "zed": "1.6",
    }
)
