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
  | SI
  | ALORS
  | SINON
  | FINSI
  | OVER
  | UNDER
  | EQUAL
  | EOF

open Parsing
let _ = parse_error;;
# 2 "logo_parser.mly"
  open Logo_ast
# 47 "logo_parser.ml"
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
  270 (* PLUS *);
  271 (* MINUS *);
  272 (* MULT *);
  273 (* DIV *);
  274 (* MOD *);
  275 (* LPAREN *);
  276 (* RPAREN *);
  277 (* REPETE *);
  278 (* OPENBRACKET *);
  279 (* CLOSEBRACKET *);
  280 (* SI *);
  281 (* ALORS *);
  282 (* SINON *);
  283 (* FINSI *);
  284 (* OVER *);
  285 (* UNDER *);
  286 (* EQUAL *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\003\000\
\005\000\005\000\005\000\005\000\005\000\005\000\005\000\004\000\
\004\000\004\000\004\000\004\000\004\000\004\000\007\000\007\000\
\007\000\006\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\001\000\005\000\007\000\
\002\000\002\000\002\000\002\000\001\000\001\000\001\000\001\000\
\002\000\005\000\005\000\005\000\005\000\005\000\001\000\001\000\
\001\000\005\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\000\
\014\000\015\000\000\000\000\000\027\000\000\000\000\000\006\000\
\000\000\016\000\000\000\000\000\009\000\010\000\011\000\012\000\
\000\000\000\000\000\000\001\000\000\000\005\000\017\000\000\000\
\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\
\000\000\000\000\024\000\023\000\025\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\007\000\000\000\000\000\018\000\
\019\000\020\000\021\000\022\000\026\000\000\000\008\000"

let yydgoto = "\002\000\
\013\000\014\000\015\000\021\000\016\000\027\000\046\000"

let yysindex = "\004\000\
\039\255\000\000\006\255\003\255\003\255\003\255\003\255\000\000\
\000\000\000\000\003\255\248\254\000\000\000\255\007\255\000\000\
\003\255\000\000\014\255\003\255\000\000\000\000\000\000\000\000\
\252\254\003\255\001\255\000\000\039\255\000\000\000\000\036\255\
\039\255\009\255\039\255\000\000\003\255\003\255\003\255\003\255\
\003\255\002\255\000\000\000\000\000\000\003\255\029\255\008\255\
\020\255\037\255\038\255\041\255\000\000\042\255\039\255\000\000\
\000\000\000\000\000\000\000\000\000\000\032\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\253\254\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\004\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\230\255\000\000\251\255\000\000\000\000\000\000"

let yytablesize = 63
let yytable = "\022\000\
\023\000\024\000\036\000\018\000\001\000\025\000\042\000\017\000\
\047\000\002\000\026\000\030\000\028\000\019\000\032\000\031\000\
\003\000\033\000\029\000\002\000\034\000\020\000\002\000\002\000\
\053\000\035\000\003\000\056\000\062\000\003\000\003\000\048\000\
\049\000\050\000\051\000\052\000\043\000\044\000\045\000\057\000\
\054\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\
\010\000\037\000\038\000\039\000\040\000\041\000\055\000\000\000\
\058\000\059\000\063\000\011\000\060\000\061\000\012\000"

let yycheck = "\005\000\
\006\000\007\000\029\000\001\001\001\000\011\000\033\000\002\001\
\035\000\013\001\019\001\017\000\013\001\011\001\020\000\002\001\
\013\001\022\001\012\001\023\001\026\000\019\001\026\001\027\001\
\023\001\025\001\023\001\020\001\055\000\026\001\027\001\037\000\
\038\000\039\000\040\000\041\000\028\001\029\001\030\001\020\001\
\046\000\003\001\004\001\005\001\006\001\007\001\008\001\009\001\
\010\001\014\001\015\001\016\001\017\001\018\001\026\001\255\255\
\020\001\020\001\027\001\021\001\020\001\020\001\024\001"

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
  PLUS\000\
  MINUS\000\
  MULT\000\
  DIV\000\
  MOD\000\
  LPAREN\000\
  RPAREN\000\
  REPETE\000\
  OPENBRACKET\000\
  CLOSEBRACKET\000\
  SI\000\
  ALORS\000\
  SINON\000\
  FINSI\000\
  OVER\000\
  UNDER\000\
  EQUAL\000\
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
# 22 "logo_parser.mly"
                  ( _1 )
# 198 "logo_parser.ml"
               : Logo_ast.t_instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'instr) in
    Obj.repr(
# 26 "logo_parser.mly"
          ( _1 )
# 205 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instr) in
    Obj.repr(
# 27 "logo_parser.mly"
                    ( _1 )
# 212 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'instr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'instr_seq) in
    Obj.repr(
# 28 "logo_parser.mly"
                              ( Seq (_1, _3) )
# 220 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 32 "logo_parser.mly"
                   ( Define (_2, _3) )
# 228 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cmd) in
    Obj.repr(
# 33 "logo_parser.mly"
        ( Cmd _1 )
# 235 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'instr_seq) in
    Obj.repr(
# 34 "logo_parser.mly"
                                                   ( Repeat (_2, _4) )
# 243 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'bexpr) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'instr_seq) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'instr_seq) in
    Obj.repr(
# 35 "logo_parser.mly"
                                                   ( IF (_2, _4, _6) )
# 252 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 39 "logo_parser.mly"
                 ( Forward _2 )
# 259 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "logo_parser.mly"
                 ( Backward _2 )
# 266 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 41 "logo_parser.mly"
                 ( Left _2 )
# 273 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "logo_parser.mly"
                 ( Right _2 )
# 280 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "logo_parser.mly"
                 ( Clear )
# 286 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 44 "logo_parser.mly"
                 ( PenDown )
# 292 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 45 "logo_parser.mly"
                 ( PenUp )
# 298 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 49 "logo_parser.mly"
                 ( Cst _1 )
# 305 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 50 "logo_parser.mly"
                 ( Var _2 )
# 312 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 51 "logo_parser.mly"
                                  ( Add (_2, _4) )
# 320 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 52 "logo_parser.mly"
                                  ( Sub (_2, _4) )
# 328 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 53 "logo_parser.mly"
                                  ( Mul (_2, _4) )
# 336 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 54 "logo_parser.mly"
                                  ( Div (_2, _4) )
# 344 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 55 "logo_parser.mly"
                                  ( Mod (_2, _4) )
# 352 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "logo_parser.mly"
          ( UNDER )
# 358 "logo_parser.ml"
               : 'opcmp))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "logo_parser.mly"
         ( OVER )
# 364 "logo_parser.ml"
               : 'opcmp))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "logo_parser.mly"
          ( EQUAL )
# 370 "logo_parser.ml"
               : 'opcmp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'opcmp) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 65 "logo_parser.mly"
                                  ( Cmp (_2, _3, _4) )
# 379 "logo_parser.ml"
               : 'bexpr))
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
