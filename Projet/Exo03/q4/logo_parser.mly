%{
  open Logo_ast (*Importer les types, fonctions et variables de logo_ast.ml*)
%}

%token <int> INT
%token <string> IDENT
%token DEF AVANCE RECULE GAUCHE DROITE EFFACE DESSINE DEPLACE
%token COLON SEMICOLON DOT
%token PLUS MINUS MULT DIV MOD
%token LPAREN RPAREN
%token REPETE OPENBRACKET CLOSEBRACKET
%token SI ALORS SINON FINSI
%token OVER UNDER EQUAL

%start main
%type <Logo_ast.t_instr> main (*lorsque la règle main a fini son travail, elle renvoie une valeur de type t_instr, qui vient de logo_ast.ml*)

%%

main:
  | instr_seq DOT { $1 } (* "$1" car on renvoie la valeur de instr_seq *)
;

instr_seq:
  | instr { $1 }(*Pareil on revoie la valeur de instr qui est le 1er élément dans "$1"*)
  | instr SEMICOLON { $1 }(* Comme en haut *)
  | instr SEMICOLON instr_seq { Seq ($1, $3) }(*On renvoie la valeur du 1er élément et du 3ème, ils sont séparés par le 2ème ";"*)
;

instr:
  | DEF IDENT expr { Define ($2, $3) }(* Car on fait un define de l'identifiant et de la valeur de cet identifiant *)
  | cmd { Cmd $1 } (* On prend la commande donné par l'utilisateur qui est le premier élément*)
  | REPETE expr OPENBRACKET instr_seq CLOSEBRACKET { Repeat ($2, $4) } (* On prend le 2ème élément qui est le nombre de fois qu'on boucle, et le 4ème, qui est ce que l'on boucle*)
  | SI bexpr ALORS instr_seq SINON instr_seq FINSI { IF ($2, $4, $6) } (* On prend l'expression booléene, ele est l'élément 2, on prend en suite les différentes options possible en fonction du résultats de l'expression.*)
;

cmd:
  | AVANCE expr  { Forward $2 }(* La valeur avec la commande *)
  | RECULE expr  { Backward $2 }(* La valeur avec la commande *)
  | GAUCHE expr  { Left $2 }(* La valeur avec la commande *)
  | DROITE expr  { Right $2 }(* La valeur avec la commande *)
  | EFFACE       { Clear }
  | DESSINE      { PenDown }
  | DEPLACE      { PenUp }
;

expr:
  | INT          { Cst $1 }
  | COLON IDENT  { Var $2 }(* Prend la valeur de la variable qui en deuxième élément *)
  | LPAREN expr PLUS expr RPAREN  { Add ($2, $4) }(*Prend les deux valeurs à calculer en fonction de l'opérateur entre elles*)
  | LPAREN expr MINUS expr RPAREN { Sub ($2, $4) }(*Prend les deux valeurs à calculer en fonction de l'opérateur entre elles*)
  | LPAREN expr MULT expr RPAREN  { Mul ($2, $4) }(*Prend les deux valeurs à calculer en fonction de l'opérateur entre elles*)
  | LPAREN expr DIV expr RPAREN   { Div ($2, $4) }(*Prend les deux valeurs à calculer en fonction de l'opérateur entre elles*)
  | LPAREN expr MOD expr RPAREN   { Mod ($2, $4) }(*Prend les deux valeurs à calculer en fonction de l'opérateur entre elles*)
;

opcmp:
  | UNDER { UNDER }
  | OVER { OVER }
  | EQUAL { EQUAL }
;

bexpr:
  | LPAREN expr opcmp expr RPAREN { Cmp ($2, $3, $4) }(* On a une expression en élément 2, l'opérateur booléen en 3 et la deuxième expression en 4. *)
;