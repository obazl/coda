load("@obazl_rules_opam//opam:providers.bzl", "OpamConfig", "BuildConfig")

opam_pkgs = {
    # pin paths:
    "async_kernel": ["v0.12.0",
                     "src/external/async_kernel"
                     # "https://github.com/MinaProtocol/async_kernel.git#cb27218d3c"
                     ],
    "base58"      : ["0.1.2", "src/external/coda_base58"],
    "extlib"      : ["1.7.7",
                     "src/external/ocaml-extlib"
                     # "https://github.com/MinaProtocol/ocaml-extlib.git#9bf669cd70"
                     ], # needed by merkle_ledger
    "rpc_parallel": ["v0.12.0",
                     "src/external/rpc_parallel"
                     # "https://github.com/MinaProtocol/rpc_parallel.git#115fde2"
                     ],
    # "graphql_ppx" : ["0.0.4",
    #                  "src/external/graphql_ppx"
    #                  # "https://github.com/o1-labs/graphql_ppx.git#d8c47bd"
    #                  ],
    # "sodium"       : "src/external/ocaml-sodium"

    # pin versions:
    "alcotest": ["1.1.0"],
    "angstrom": ["0.11.2"],
    "asetmap": ["0.8.1"],
    "astring": ["0.8.3"],
    "async": ["v0.12.0"],
    "async_extra": ["v0.12.0"],
    "async_rpc_kernel": ["v0.12.0"],
    "async_ssl": ["v0.12.0"],  # WARNING: depends on libssl-dev
    "async_unix": ["v0.12.0"],
    "base": ["v0.12.0"],
    "base64": ["3.4.0"],
    "base_bigstring": ["v0.12.0"],
    "base_quickcheck": ["v0.12.1"],
    "bigarray": [],
    "bignum": ["v0.12.0"], # WARNING: depends on libgmp-dev
    "bigstringaf": ["0.5.0"],
    "bin_prot": ["v0.12.0"],
    "biniou": ["1.2.0"],
    "bisect_ppx": ["2.4.1", ["bisect_ppx.runtime"]],
    "bitstring": ["3.1.1", ["bitstring.ppx"]],
    "bytes": [],
    "caqti": ["1.2.0"],
    "caqti-async": ["1.2.0"],
    "caqti-driver-postgresql": ["1.2.0"],  # WARNING: depends on libpq-dev
    "cmdliner": ["1.0.3"],
    "cohttp": ["2.1.2"],
    "cohttp-async": ["2.1.1"],
    "conduit": ["1.4.0"],
    "conduit-async": ["1.4.0"],
    "configurator": ["v0.11.0"],
    "core": ["v0.12.1"],
    "core_bench": ["v0.12.0", ["core_bench.inline_benchmarks"]],
    "core_extended": ["v0.12.0"],
    "core_kernel": ["v0.12.3", ["core_kernel.hash_heap"]],
    "cppo": ["1.6.5"],
    "crunch": ["3.0.0"],
    "ctypes": ["0.17.1", ["ctypes.foreign", "ctypes.stubs"]],
    "ctypes-foreign": ["0.4.0"], # WARNING: requires libffi-dev
    "digestif": ["0.9.0", ["digestif.c", "digestif.ocaml"]],
    "dune": ["2.7.1"],
    "dune-configurator": ["2.5.1"],
    "dynlink": [],
    "eqaf": ["0.2"],
    "fieldslib": ["v0.12.0"],
    "fmt": ["0.8.6"],
    "graphql": ["0.9.0"],
    "graphql-async": ["0.9.0"],
    "graphql-cohttp": ["0.12.1"],
    "graphql_parser": ["0.12.2"],
    "incremental": ["v0.12.0"],
    "integers": ["0.4.0"],
    "ipaddr": ["3.1.0"],
    "jane-street-headers": ["v0.12.0"],
    # "jemalloc": ["0.2"], # we use our own version @ocaml_jemalloc
    "js_of_ocaml": ["3.6.0"],
    "js_of_ocaml-compiler": ["3.6.0"],
    "js_of_ocaml-ppx": ["3.6.0"],
    "js_of_ocaml-toplevel": ["3.6.0"],
    "jsonm": ["1.0.1"],
    "jst-config": ["v0.12.0"],
    "lambda-term": ["1.13"],
    "lens": ["1.2.3", ["lens.ppx_deriving"]],
    "logs": ["0.7.0"],
    "macaddr": ["3.1.0"],
    "magic-mime": ["1.1.2"],
    "menhir": ["20181113"],
    "merlin": ["3.2.2"],
    "mmap": ["1.1.0"],
    "num": ["1.1"],
    "ocaml": ["4.07.1"],
    # WARNING: pinning this seems to have the side-effect of removing
    # tons of pkgs and reinstalling them, which takes a long time,
    # which may cause a time out error
    # it should be installed when the switch is created, so we do not need it here?
    # "ocaml-base-compiler": ["4.07.1"],
    "ocaml-compiler-libs": ["v0.11.0"],
    "compiler-libs.common": [],
    "ocaml-config": ["1"],
    "ocaml-migrate-parsetree": ["1.7.3"],
    "ocamlfind": ["1.8.1"],
    "ocamlgraph": ["1.8.8"],
    "ocp-indent": ["1.7.0"],
    "ocplib-endian": ["1.0"],
    "ounit2": ["2.2.3"],
    "parsexp": ["v0.12.0"],
    "postgresql": ["4.5.0"],
    "ppx_assert": ["v0.12.0", ["ppx_assert.runtime-lib"]],
    "ppx_base": ["v0.12.0"],
    "ppx_bench": ["v0.12.0", ["ppx_bench.runtime-lib"]],
    "ppx_bin_prot": ["v0.12.1"],
    "ppx_compare": ["v0.12.0", ["ppx_compare.runtime-lib"]],
    "ppx_custom_printf": ["v0.12.0"],
    "ppx_derivers": ["1.2.1"],
    "ppx_deriving": ["4.4.1", [
        "ppx_deriving.api",
        "ppx_deriving.enum",
        "ppx_deriving.eq",
        "ppx_deriving.make",
        "ppx_deriving.ord",
        "ppx_deriving.std",
        "ppx_deriving.runtime",
        "ppx_deriving.show"
    ]],
    "ppx_deriving_yojson": ["3.5.2", ["ppx_deriving_yojson.runtime"]],
    "ppx_enumerate": ["v0.12.0", ["ppx_enumerate.runtime-lib"]],
    "ppx_expect": ["v0.12.0", ["ppx_expect.collector"]],
    "ppx_fail": ["v0.12.0"],
    "ppx_fields_conv": ["v0.12.0"],
    "ppx_hash": ["v0.12.0", ["ppx_hash.runtime-lib"]],
    "ppx_here": ["v0.12.0"],
    "ppx_inline_test": ["v0.12.0", ["ppx_inline_test.runtime-lib"]],
    "ppx_jane": ["v0.12.0"],
    "ppx_js_style": ["v0.12.0"],
    "ppx_let": ["v0.12.0"],
    "ppx_module_timer": ["v0.12.0", ["ppx_module_timer.runtime"]],
    "ppx_optcomp": ["v0.12.0"],
    "ppx_optional": ["v0.12.0"],
    "ppx_pipebang": ["v0.12.0"],
    "ppx_sexp_conv": ["v0.12.0", ["ppx_sexp_conv.runtime-lib"]],
    "ppx_sexp_message": ["v0.12.0"],
    "ppx_sexp_value": ["v0.12.0"],
    "ppx_stable": ["v0.12.0"],
    "ppx_tools": ["5.1+4.06.0"],
    "ppx_tools_versioned": ["5.4.0", ["ppx_tools_versioned.metaquot_402"]],
    "ppx_typerep_conv": ["v0.12.0"],
    "ppx_variants_conv": ["v0.12.0"],
    "ppxfind": ["1.4"],
    "ppxlib": ["0.8.1", ["ppxlib.metaquot"]],
    "prometheus": ["0.5"],
    "protocol_version_header": ["v0.12.0"],
    "ptime": ["0.8.5"],
    "re": ["1.9.0"],
    "re2": ["v0.12.1"],
    "react": ["1.2.1"],
    "result": ["1.3"],
    "rresult": ["0.6.0"],
    "sexp_diff_kernel": ["v0.12.0"],
    "sexplib": ["v0.12.0"],
    "sexplib0": ["v0.12.0"],
    "spawn": ["v0.13.0"],
    "splittable_random": ["v0.12.0"],
    "stdio": ["v0.12.0"],
    "stdlib-shims": ["0.1.0"],
    "stringext": ["1.5.0"],
    "textutils": ["v0.12.0"],
    "textutils_kernel": ["v0.12.0"],
    "time_now": ["v0.12.0"],
    "typerep": ["v0.12.0"],
    "uchar": ["0.0.2"],
    "unix": [],
    "uri": ["2.2.1"],
    "uutf": ["1.0.2"],
    "variantslib": ["v0.12.0"],
    "yojson": ["1.7.0"],
    "zarith": ["1.7"],  # WARNING: depends on libgmp-dev
    "zarith_stubs_js": ["v0.13.0"],
    "zed": ["1.6"],
}

opam = OpamConfig(
    version = "2.0",
    builds  = {
        "mina-0.1.0": BuildConfig(
            default  = True,
            compiler = "4.07.1",
            packages = opam_pkgs
        ),
        "4.07.1": BuildConfig(
            compiler = "4.07.1",
            packages = opam_pkgs
        ),
    }
)
