{
  open Logo_parser
  
  exception Quit
  exception Not_recognized
}

let space = [' ''\n']
let digit = ['0'-'9']
let sign = ['+' '-']
let integer = sign? digit+ (*"?" car on en veut 0 ou 1 et "+" car on veut au moins 1*)
let letter = ['a'-'z' 'A'-'Z']
let lowercase = ['a' - 'z']
let ident = (lowercase | '_') (letter | digit | '_')* (*On a d'abord letter ou rien, puis si letter, soit un autre nom d'identifiant, soit la valeur numérique. Ou alors rien. Et on fait "*" car on en veut 0 si y a rien jusqu'à plusieurs avec le digit*)
let com = "--" [^'\n']* (*On regarde pour les commentaires, si il y a "--", tout ce qui n'est pas "\n" est pris comme un commentiare. Et on a une "*" car comme ça on peut mettre 0 ou plusieurs caractères dans le commentaire*)

rule read_lexeme = parse
  | space+    { read_lexeme lexbuf }
  | com   { read_lexeme lexbuf }
  | "Repete"  { REPETE }
  | "Def"     { DEF }
  | "Avance"  { AVANCE }
  | "Recule"  { RECULE }
  | "Gauche"  { GAUCHE }
  | "Droite"  { DROITE }
  | "Efface"  { EFFACE }
  | "Dessine" { DESSINE }
  | "Deplace" { DEPLACE }
  | "Si"      { SI }
  | "Alors"   { ALORS }
  | "Sinon"   { SINON }
  | "FinSi"   { FINSI }
  | ":"       { COLON }
  | ";"       { SEMICOLON }
  | "."       { DOT }
  | "["       { OPENBRACKET }
  | "]"       { CLOSEBRACKET }
  | "+"       { PLUS }
  | "-"       { MINUS }
  | "*"       { MULT }
  | "/"       { DIV }
  | "%"       { MOD }
  | "("       { LPAREN }
  | ")"       { RPAREN }
  | ">"       { OVER }
  | "<"       { UNDER }
  | "="       { EQUAL }
  | integer as s { INT (int_of_string s) }
  | ident as s   { IDENT s }
  | "#Fin"    { raise Quit }
  | _         { raise Not_recognized }
