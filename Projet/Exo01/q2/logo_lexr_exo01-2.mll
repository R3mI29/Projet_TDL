{
  exception Quit
  exception Not_recognized
}

let space = [' ''\n']
let digit = ['0'-'9']
let sign = ['+' '-']
let integer = sign? digit+
let letter = ['a'-'z' 'A'-'Z']
let ident = (letter | '_') (letter | digit | '_')*

rule read_lexeme = parse
  | space+    { read_lexeme lexbuf }
  | "Def"     { print_endline "Mot-clef : Def"; read_lexeme lexbuf }
  | "Avance"  { print_endline "Commande : Avance"; read_lexeme lexbuf }
  | "Recule"  { print_endline "Commande : Recule"; read_lexeme lexbuf }
  | "Gauche"  { print_endline "Commande : Gauche"; read_lexeme lexbuf }
  | "Droite"  { print_endline "Commande : Droite"; read_lexeme lexbuf }
  | "Efface"  { print_endline "Commande : Efface"; read_lexeme lexbuf }
  | "Dessine" { print_endline "Commande : Dessine"; read_lexeme lexbuf }
  | "Deplace" { print_endline "Commande : Deplace"; read_lexeme lexbuf }
  | ":"       { print_endline "Symbole : Accessseur (:)"; read_lexeme lexbuf }
  | ";"       { print_endline "Symbole : Séparateur (;)"; read_lexeme lexbuf }
  | "."       { print_endline "Symbole : Fin de phrase (.)"; read_lexeme lexbuf }
  | integer as s { print_endline ("Entier : " ^ s); read_lexeme lexbuf }
  | ident as s   { print_endline ("Identificateur : " ^ s); read_lexeme lexbuf }
  | "#Fin"    { print_endline "La commande #Fin, on s'arrête"; raise Quit }
  | _         { raise Not_recognized }
