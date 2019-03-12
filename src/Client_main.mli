
(* This file is free software. See file "license" for more details. *)

val init :
  ?additional_args:(Arg.key * Arg.spec * Arg.doc) list ->
  usage:string ->
  unit
(** [init ?additional_args ~usage] will parse command line arguments.

    - A connection file can be passed using [--connection-file <file>];
    - A log file through [--log <file>];
    - Individual connection parameters with [--ci-<foo> <bar>];
    - See [--help] for more details;
    - The parameter [additional_args] can contain additional command line arguments.
*)

val main : kernel:Client.Kernel.t -> unit Lwt.t
(** [main ~kernel] will open a connection using {!Sockets}, and run the passed
kernel. Run via {!Lwt_main.run} *)
