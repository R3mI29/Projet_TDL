type token =
  | INT of (
# 5 "logo_parser.mly"
        int
# 6 "logo_parser.mli"
)
  | IDENT of (
# 6 "logo_parser.mly"
        string
# 11 "logo_parser.mli"
)
  | DEF
  | AVANCE
  | RECULE
  | GAUCHE
  | DROITE
  | EFFACE
  | DESSINE
  | DEPLACE
  | COLON
  | SEMICOLON
  | DOT
  | PLUS
  | MINUS
  | MULT
  | DIV
  | MOD
  | LPAREN
  | RPAREN
  | REPETE
  | OPENBRACKET
  | CLOSEBRACKET
  | EOF

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Logo_ast.t_instr
