%{
  open Logo_ast
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
  | SI bexpr ALORS instr_seq SINON instr_seq FINSI { IF ($2, $4, $6) }
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
  | LPAREN expr PLUS expr RPAREN  { Add ($2, $4) }
  | LPAREN expr MINUS expr RPAREN { Sub ($2, $4) }
  | LPAREN expr MULT expr RPAREN  { Mul ($2, $4) }
  | LPAREN expr DIV expr RPAREN   { Div ($2, $4) }
  | LPAREN expr MOD expr RPAREN   { Mod ($2, $4) }
;

opcmp:
  | UNDER { UNDER }
  | OVER { OVER }
  | EQUAL { EQUAL }
;

bexpr:
  | LPAREN expr opcmp expr RPAREN { Cmp ($2, $3, $4) }
;