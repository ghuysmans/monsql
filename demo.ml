let () =
  let lexbuf = Lexing.from_channel stdin in
  let rec f () =
    match Monsql.tokenize lexbuf with
    | "" -> ()
    | s -> print_string s; f ()
  in
  f ();
  print_newline ()
