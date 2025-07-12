(*Find out whether a list is a palindrome.

Hint: A palindrome is its own reverse.*)

let is_palindrome (li : 'a list) : bool =
  let rec sub (cur : 'a list) (cur_rev : 'a list) : bool =
    match cur, cur_rev with
    | [], [] -> true
    | h1::t1, h2::t2 ->
      if h1 = h2 then 
        sub t1 t2 
      else
        false
    | _ -> false
  in sub li (List.rev li);;

is_palindrome ["x"; "a"; "m"; "a"; "x"];;
not (is_palindrome ["a"; "b"]);;

let is_palindrome_improved (li : 'a list) : bool =
  li = (List.rev li);;