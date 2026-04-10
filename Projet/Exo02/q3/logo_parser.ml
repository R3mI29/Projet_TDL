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
  | EOF

open Parsing
let _ = parse_error;;
# 2 "logo_parser.mly"
  open Logo_ast
# 40 "logo_parser.ml"
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
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\003\000\003\000\003\000\005\000\
\005\000\005\000\005\000\005\000\005\000\005\000\004\000\004\000\
\004\000\004\000\004\000\004\000\004\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\001\000\005\000\002\000\
\002\000\002\000\002\000\001\000\001\000\001\000\001\000\002\000\
\005\000\005\000\005\000\005\000\005\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\012\000\
\013\000\014\000\000\000\022\000\000\000\000\000\006\000\000\000\
\015\000\000\000\000\000\008\000\009\000\010\000\011\000\000\000\
\001\000\000\000\005\000\016\000\000\000\000\000\004\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\007\000\017\000\018\000\019\000\020\000\021\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\020\000\015\000"

let yysindex = "\004\000\
\012\255\000\000\005\255\023\255\023\255\023\255\023\255\000\000\
\000\000\000\000\023\255\000\000\252\254\254\254\000\000\023\255\
\000\000\010\255\023\255\000\000\000\000\000\000\000\000\001\255\
\000\000\012\255\000\000\000\000\029\255\012\255\000\000\023\255\
\023\255\023\255\023\255\023\255\002\255\015\255\017\255\018\255\
\019\255\020\255\000\000\000\000\000\000\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\246\254\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\013\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\234\255\000\000\251\255\000\000"

let yytablesize = 47
let yytable = "\021\000\
\022\000\023\000\002\000\031\000\001\000\024\000\016\000\037\000\
\025\000\026\000\027\000\028\000\002\000\029\000\003\000\004\000\
\005\000\006\000\007\000\008\000\009\000\010\000\030\000\017\000\
\043\000\003\000\038\000\039\000\040\000\041\000\042\000\000\000\
\011\000\018\000\044\000\003\000\045\000\046\000\047\000\048\000\
\000\000\019\000\032\000\033\000\034\000\035\000\036\000"

let yycheck = "\005\000\
\006\000\007\000\013\001\026\000\001\000\011\000\002\001\030\000\
\013\001\012\001\016\000\002\001\023\001\019\000\003\001\004\001\
\005\001\006\001\007\001\008\001\009\001\010\001\022\001\001\001\
\023\001\013\001\032\000\033\000\034\000\035\000\036\000\255\255\
\021\001\011\001\020\001\023\001\020\001\020\001\020\001\020\001\
\255\255\019\001\014\001\015\001\016\001\017\001\018\001"

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
# 20 "logo_parser.mly"
                  ( _1 )
# 165 "logo_parser.ml"
               : Logo_ast.t_instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'instr) in
    Obj.repr(
# 24 "logo_parser.mly"
          ( _1 )
# 172 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'instr) in
    Obj.repr(
# 25 "logo_parser.mly"
                    ( _1 )
# 179 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'instr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'instr_seq) in
    Obj.repr(
# 26 "logo_parser.mly"
                              ( Seq (_1, _3) )
# 187 "logo_parser.ml"
               : 'instr_seq))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 30 "logo_parser.mly"
                   ( Define (_2, _3) )
# 195 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'cmd) in
    Obj.repr(
# 31 "logo_parser.mly"
        ( Cmd _1 )
# 202 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'instr_seq) in
    Obj.repr(
# 32 "logo_parser.mly"
                                                   ( Repeat (_2, _4) )
# 210 "logo_parser.ml"
               : 'instr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 36 "logo_parser.mly"
                 ( Forward _2 )
# 217 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 37 "logo_parser.mly"
                 ( Backward _2 )
# 224 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 38 "logo_parser.mly"
                 ( Left _2 )
# 231 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 39 "logo_parser.mly"
                 ( Right _2 )
# 238 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 40 "logo_parser.mly"
                 ( Clear )
# 244 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 41 "logo_parser.mly"
                 ( PenDown )
# 250 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    Obj.repr(
# 42 "logo_parser.mly"
                 ( PenUp )
# 256 "logo_parser.ml"
               : 'cmd))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 46 "logo_parser.mly"
                 ( Cst _1 )
# 263 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 47 "logo_parser.mly"
                 ( Var _2 )
# 270 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 48 "logo_parser.mly"
                                  ( Add (_2, _4) )
# 278 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 49 "logo_parser.mly"
                                  ( Sub (_2, _4) )
# 286 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 50 "logo_parser.mly"
                                  ( Mul (_2, _4) )
# 294 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 51 "logo_parser.mly"
                                  ( Div (_2, _4) )
# 302 "logo_parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 52 "logo_parser.mly"
                                  ( Mod (_2, _4) )
# 310 "logo_parser.ml"
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
