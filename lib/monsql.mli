val fr_en : string -> string
val en_fr : string -> string

val compile : (string -> string) -> output:(string -> unit) -> Lexing.lexbuf -> unit
