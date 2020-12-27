open Js_of_ocaml

let () =
  Js.export "MonSQL" (object%js
    method compile s =
      let buf = Buffer.create 1024 in
      Js.to_string s |>
      Lexing.from_string |>
      Monsql.(compile fr_en) ~output:(Buffer.add_string buf);
      Buffer.contents buf |> Js.string
  end)
