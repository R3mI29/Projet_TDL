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
  | EOF

open Parsing
let _ = parse_error;;
# 2 "logo_parser.mly"
  open Logo_ast
# 30 "logo_parser.ml"
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
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\005\000\005\000\
\005\000\005\000\005\000\005\000\005\000\004\000\004\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\001\000\002\000\002\000\
\002\000\002\000\001\000\001\000\001\000\001\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\011\000\
\012\000\013\000\016\000\000\000\000\000\006\000\000\000\014\000\
\000\000\007\000\008\000\009\000\010\000\001\000\000\000\005\000\
\015\000\004\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\018\000\014\000"

let yysindex = "\003\000\
\011\255\000\000\003\255\002\255\002\255\002\255\002\255\000\000\
\000\000\000\000\000\000\249\254\251\254\000\000\002\255\000\000\
\006\255\000\000\000\000\000\000\000\000\000\000\011\255\000\000\
\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\252\254\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\254\254\000\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\245\255\000\000\251\255\000\000"

let yytablesize = 21
let yytable = "\019\000\
\020\000\021\000\016\000\001\000\015\000\022\000\023\000\025\000\
\002\000\024\000\003\000\026\000\017\000\003\000\004\000\005\000\
\006\000\007\000\008\000\009\000\010\000"

let yycheck = "\005\000\
\006\000\007\000\001\001\001\000\002\001\013\001\012\001\002\001\
\013\001\015\000\013\001\023\000\011\001\003\001\004\001\005\001\
\006\001\007\001\008\001\009\001\010\001"

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
# 17 "logo_parser.mly"
                  ( _1 )
# 121 "logo_parser.ml"
               : Logo_ast.t_instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'instr) in
    Obj.repr(
# 21 "logo_parser.mly"
          ( _1 )
# 128 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instr) in
    Obj.repr(
# 22 "logo_parser.mly"
                    ( _1 )
# 135 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'instr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'instr_seq) in
    Obj.repr(
# 23 "logo_parser.mly"
                              ( Seq (_1, _3) )
# 143 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 27 "logo_parser.mly"
                   ( Define (_2, _3) )
# 151 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cmd) in
    Obj.repr(
# 28 "logo_parser.mly"
        ( Cmd _1 )
# 158 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 32 "logo_parser.mly"
                 ( Forward _2 )
# 165 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 33 "logo_parser.mly"
                 ( Backward _2 )
# 172 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 34 "logo_parser.mly"
                 ( Left _2 )
# 179 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 35 "logo_parser.mly"
                 ( Right _2 )
# 186 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "logo_parser.mly"
                 ( Clear )
# 192 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "logo_parser.mly"
                 ( PenDown )
# 198 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 38 "logo_parser.mly"
                 ( PenUp )
# 204 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 42 "logo_parser.mly"
                 ( Cst _1 )
# 211 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 43 "logo_parser.mly"
                 ( Var _2 )
# 218 "logo_parser.ml"
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
