let () =
  Lexing.from_channel stdin |>
  Monsql.(compile fr_en) ~output:print_string
