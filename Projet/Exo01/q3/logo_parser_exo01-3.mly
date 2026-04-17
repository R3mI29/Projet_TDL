%{
  open Logo_ast
%}

%token <int> INT
%token <string> IDENT
%token DEF AVANCE RECULE GAUCHE DROITE EFFACE DESSINE DEPLACE
%token COLON SEMICOLON DOT
%start main
%type <Logo_ast.t_instr> main

%%

main:
  | instr_seq DOT { print_endline "Règle : phrase terminée par un point"; $1 }
;

instr_seq:
  | instr { print_endline "Règle : instruction simple"; $1 }
  | instr SEMICOLON { print_endline "Règle : instruction avec point-virgule"; $1 }
  | instr SEMICOLON instr_seq { print_endline "Règle : séquence d'instructions"; Seq ($1, $3) }
;

instr:
  | DEF IDENT expr { print_endline "Règle : définition de variable"; Define ($2, $3) }
  | cmd { print_endline "Règle : exécution d'une commande"; Cmd $1 }
;

cmd:
  | AVANCE expr  { print_endline "Règle : commande Avance"; Forward $2 }
  | RECULE expr  { print_endline "Règle : commande Recule"; Backward $2 }
  | GAUCHE expr  { print_endline "Règle : commande Gauche"; Left $2 }
  | DROITE expr  { print_endline "Règle : commande Droite"; Right $2 }
  | EFFACE       { print_endline "Règle : commande Efface"; Clear }
  | DESSINE      { print_endline "Règle : commande Dessine"; PenDown }
  | DEPLACE      { print_endline "Règle : commande Deplace"; PenUp }
;

expr:
  | INT          { print_endline "Règle : expression constante (entier)"; Cst $1 }
  | COLON IDENT  { print_endline "Règle : expression variable (:)"; Var $2 }
;