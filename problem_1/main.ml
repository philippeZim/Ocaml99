(*Write a function last : 'a list -> 'a option that returns the last element of a list*)

let rec last (li : 'a list) : 'a option =
  match li with
  | [] -> None
  | x::[] -> Some x
  | h::t -> last t;;


last ["a" ; "b" ; "c" ; "d"];;
last [];;