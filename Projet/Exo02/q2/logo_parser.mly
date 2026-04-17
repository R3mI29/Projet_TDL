%{
  open Logo_ast
%}

%token <int> INT
%token <string> IDENT
%token DEF AVANCE RECULE GAUCHE DROITE EFFACE DESSINE DEPLACE
%token COLON SEMICOLON DOT
%token REPETE OPENBRACKET CLOSEBRACKET

%start main
%type <Logo_ast.t_instr> main

%%

main:
  | instr_seq DOT { $1 }
;

instr_seq:
  | instr { $1 }
  | instr SEMICOLON { $1 }
  | instr SEMICOLON instr_seq { Seq ($1, $3) }
;

instr:
  | DEF IDENT expr { Define ($2, $3) }
  | cmd { Cmd $1 }
  | REPETE expr OPENBRACKET instr_seq CLOSEBRACKET { Repeat ($2, $4) }
;

cmd:
  | AVANCE expr  { Forward $2 }
  | RECULE expr  { Backward $2 }
  | GAUCHE expr  { Left $2 }
  | DROITE expr  { Right $2 }
  | EFFACE       { Clear }
  | DESSINE      { PenDown }
  | DEPLACE      { PenUp }
;

expr:
  | INT          { Cst $1 }
  | COLON IDENT  { Var $2 }
;