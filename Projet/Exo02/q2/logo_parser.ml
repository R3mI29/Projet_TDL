type token =
  | INT of (
# 5 "logo_parser.mly"
        int
# 6 "logo_parser.ml"
)
  | IDENT of (
# 6 "logo_parser.mly"
        string
# 11 "logo_parser.ml"
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
  | REPETE
  | OPENBRACKET
  | CLOSEBRACKET
  | EOF

open Parsing
let _ = parse_error;;
# 2 "logo_parser.mly"
  open Logo_ast
# 33 "logo_parser.ml"
let yytransl_const = [|
  259 (* DEF *);
  260 (* AVANCE *);
  261 (* RECULE *);
  262 (* GAUCHE *);
  263 (* DROITE *);
  264 (* EFFACE *);
  265 (* DESSINE *);
  266 (* DEPLACE *);
  267 (* COLON *);
  268 (* SEMICOLON *);
  269 (* DOT *);
  270 (* REPETE *);
  271 (* OPENBRACKET *);
  272 (* CLOSEBRACKET *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\004\000\004\000\
\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\001\000\005\000\002\000\
\002\000\002\000\002\000\001\000\001\000\001\000\001\000\002\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\012\000\
\013\000\014\000\000\000\017\000\000\000\000\000\006\000\000\000\
\015\000\000\000\008\000\009\000\010\000\011\000\000\000\001\000\
\000\000\005\000\016\000\000\000\004\000\000\000\007\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\019\000\015\000"

let yysindex = "\020\000\
\253\254\000\000\021\255\011\255\011\255\011\255\011\255\000\000\
\000\000\000\000\011\255\000\000\012\255\014\255\000\000\011\255\
\000\000\022\255\000\000\000\000\000\000\000\000\013\255\000\000\
\253\254\000\000\000\000\253\254\000\000\015\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\255\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\002\255\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\248\255\000\000\003\000\000\000"

let yytablesize = 31
let yytable = "\003\000\
\004\000\005\000\006\000\007\000\008\000\009\000\010\000\020\000\
\021\000\022\000\011\000\017\000\002\000\023\000\003\000\002\000\
\029\000\003\000\026\000\030\000\001\000\018\000\016\000\027\000\
\024\000\025\000\000\000\028\000\000\000\000\000\031\000"

let yycheck = "\003\001\
\004\001\005\001\006\001\007\001\008\001\009\001\010\001\005\000\
\006\000\007\000\014\001\001\001\013\001\011\000\013\001\016\001\
\025\000\016\001\016\000\028\000\001\000\011\001\002\001\002\001\
\013\001\012\001\255\255\015\001\255\255\255\255\016\001"

let yynames_const = "\
  DEF\000\
  AVANCE\000\
  RECULE\000\
  GAUCHE\000\
  DROITE\000\
  EFFACE\000\
  DESSINE\000\
  DEPLACE\000\
  COLON\000\
  SEMICOLON\000\
  DOT\000\
  REPETE\000\
  OPENBRACKET\000\
  CLOSEBRACKET\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instr_seq) in
    Obj.repr(
# 18 "logo_parser.mly"
                  ( _1 )
# 134 "logo_parser.ml"
               : Logo_ast.t_instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'instr) in
    Obj.repr(
# 22 "logo_parser.mly"
          ( _1 )
# 141 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instr) in
    Obj.repr(
# 23 "logo_parser.mly"
                    ( _1 )
# 148 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'instr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'instr_seq) in
    Obj.repr(
# 24 "logo_parser.mly"
                              ( Seq (_1, _3) )
# 156 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 28 "logo_parser.mly"
                   ( Define (_2, _3) )
# 164 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cmd) in
    Obj.repr(
# 29 "logo_parser.mly"
        ( Cmd _1 )
# 171 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'instr_seq) in
    Obj.repr(
# 30 "logo_parser.mly"
                                                   ( Repeat (_2, _4) )
# 179 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 34 "logo_parser.mly"
                 ( Forward _2 )
# 186 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 35 "logo_parser.mly"
                 ( Backward _2 )
# 193 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 36 "logo_parser.mly"
                 ( Left _2 )
# 200 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 37 "logo_parser.mly"
                 ( Right _2 )
# 207 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "logo_parser.mly"
                 ( Clear )
# 213 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 39 "logo_parser.mly"
                 ( PenDown )
# 219 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "logo_parser.mly"
                 ( PenUp )
# 225 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 44 "logo_parser.mly"
                 ( Cst _1 )
# 232 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 45 "logo_parser.mly"
                 ( Var _2 )
# 239 "logo_parser.ml"
               : 'expr))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Logo_ast.t_instr)
