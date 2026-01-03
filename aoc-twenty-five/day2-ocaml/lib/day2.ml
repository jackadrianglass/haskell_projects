let list_sub lst start len =
  lst |> List.filteri (fun i _ -> i >= start && i < start + len)
;;

let rec get_digits_impl num acc =
    if num == 0 then acc
    else get_digits_impl (num / 10) ((num mod 10) :: acc)
;;

let get_digits num =
    get_digits_impl (abs num) []
;;

let is_valid_id id =
    let digits = get_digits id in
    let is_odd = ((List.length digits) mod 2) != 0 in
    let mid = (List.length digits) / 2 in
    let first_half = list_sub digits 0 mid in
    let second_half = list_sub digits mid mid in
    is_odd || not (List.equal (fun a b -> a = b) first_half second_half)
;;

let get_range first last =
    List.init (last - first + 1) (fun v -> v + first)
;;

let invalid_ids_in_range first last =
    let range = get_range first last in
    range |> List.filter (fun v -> not (is_valid_id v))
;;

let is_valid_id_2 id =
    true
;;

let invalid_ids_in_range_2 first last =
    []
;;
