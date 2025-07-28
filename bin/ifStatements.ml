let leap_year year =
  if year mod 4 <> 0 then
    false
  else if year mod 100 <> 0 then
    true
  else if year mod 400 = 0 then
    true
  else
    false

let () =
  let year = 2020 in
  let result = leap_year year in
  (* Convert bool to int: true = 1, false = 0 *)
  Printf.printf "The result for %d is: %d\n" year (if result then 1 else 0)
