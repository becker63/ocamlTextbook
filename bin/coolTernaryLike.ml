let coolTernaryLike () =
  let out = 4 + (if 'a' = 'b' then 1 else 2) in
  Printf.printf "The result is: %d\n" out

let () =
  coolTernaryLike ()
