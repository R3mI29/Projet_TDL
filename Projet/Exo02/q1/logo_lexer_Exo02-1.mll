{
  open Logo_parser
  
  exception Quit
  exception Not_recognized
}

let space = [' ''\n']
let digit = ['0'-'9']
let sign = ['+' '-']
let integer = sign? digit+
let letter = ['a'-'z' 'A'-'Z']
let ident = (letter | '_') (letter | digit | '_')*
let com = "--" [^'\n']*

rule read_lexeme = parse
  | space+    { read_lexeme lexbuf }
  | com   { read_lexeme lexbuf }
  | "Def"     { DEF }
  | "Avance"  { AVANCE }
  | "Recule"  { RECULE }
  | "Gauche"  { GAUCHE }
  | "Droite"  { DROITE }
  | "Efface"  { EFFACE }
  | "Dessine" { DESSINE }
  | "Deplace" { DEPLACE }
  | ":"       { COLON }
  | ";"       { SEMICOLON }
  | "."       { DOT }
  | integer as s { INT (int_of_string s) }
  | ident as s   { IDENT s }
  | "#Fin"    { raise Quit }
  | _         { raise Not_recognized }
