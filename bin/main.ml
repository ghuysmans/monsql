let () =
  let f =
    match Sys.argv with
    | [| _; "-r" |] -> Monsql.en_fr
    | _ -> Monsql.fr_en
  in
  Lexing.from_channel stdin |>
  Monsql.compile f ~output:print_string
