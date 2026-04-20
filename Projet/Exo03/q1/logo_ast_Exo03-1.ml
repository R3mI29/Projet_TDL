(***************************************)
(*                                     *)
(*  Syntaxe abstraite pour un langage  *)
(*  "à la Logo"                        *)
(*                                     *)
(***************************************)

open Env

open Turtle

(* Decommenter si tortue graphique *)
(*
open Turtle_graphic
;;
*)

(*--------------------------------------------*)
(* type pour représenter l'état de la mémoire *)
(* La mémoire est l'ensemble des liaisons     *)
(* (variable, valeur) et une tartue           *)
(*--------------------------------------------*)
type t_state =
  Env.t_env * Turtle.t_turtle
;;

(*---------------------------------------------*)
(* types pour représenter la syntaxe abstraite *)
(* du langage                                  *)
(*---------------------------------------------*)

(*--------------------------------------------------------------*)
(* Le type pour la syntaxe abstraite des expressions            *)
(* Pour le moment, il n'y a que les constantes et les variables *)
(*--------------------------------------------------------------*)
type t_expr =
  | Cst of int
  | Var of t_ident
  | Add of t_expr * t_expr
  | Sub of t_expr * t_expr
  | Mul of t_expr * t_expr
  | Div of t_expr * t_expr
  | Mod of t_expr * t_expr
;;

(*--------------------------------------------------------------*)
(* Le type pour la syntaxe abstraite des commandes de la tortue *)
(*--------------------------------------------------------------*)
type t_cmd =
  | Forward of t_expr
  | Backward of t_expr
  | Right of t_expr
  | Left of t_expr
  | PenUp
  | PenDown
  | Clear
;;

(*-------------------------------------------------------------------*)
(* Le type pour la syntaxe abstraite des instructions du langage     *)
(* Pour le moment, il y a la définition de la valeur d'une variable, *)
(* une commande pour la tartue et une suite d'instructions           *)
(*-------------------------------------------------------------------*)
type t_instr =
  | Define of t_ident * t_expr
  | Cmd of t_cmd
  | Seq of t_instr * t_instr
  | Repeat of t_expr * t_instr
;;

(*-------------------------------------------------------------------*)
(* Le type pour les opérateurs de comparaison du language Logo       *)
(*-------------------------------------------------------------------*)
type t_opcmp = 
  | UNDER
  | OVER 
  | EQUAL
;;

(*-------------------------------------------------------------------*)
(* Le type pour la syntaxe abstraite des comparaisons dans le        *)
(* language Logo.                                                    *)
(*-------------------------------------------------------------------*)
type t_bexpr =
  | Cmp of t_expr * t_opcmp * t_expr
;;




(*------------------------------------------------------------------------*)
(* Fonctions d'interprétation                                             *)
(*------------------------------------------------------------------------*)

(*------------------------------------------------*)
(* Interprétation d'une expression                *)
(*   @param env : environnement qui contient les  *)
(*                valeurs des variables           *)
(*   @param e   : l'expression à interpéter       *)
(*                                                *)
(*   @return    : valeur de l'expression          *)
(*------------------------------------------------*)
let rec interp_expr (env : t_env) (e : t_expr) : int =
  match e with
  | Cst n -> n
  | Var v -> Env.value_of v env
  | Add (e1, e2) -> (interp_expr env e1) + (interp_expr env e2)
  | Sub (e1, e2) -> (interp_expr env e1) - (interp_expr env e2)
  | Mul (e1, e2) -> (interp_expr env e1) * (interp_expr env e2)
  | Div (e1, e2) -> (interp_expr env e1) / (interp_expr env e2)
  | Mod (e1, e2) -> (interp_expr env e1) mod (interp_expr env e2)
;;

(*-----------------------------------------------------*)
(* Interprétation d'une commande                       *)
(*   @param c   : la commande à interpéter             *)
(*   @param s   : un état composé d'un environnement   *) 
(*                et de la tortue courante             *)
(*                                                     *)
(*   @return    : la nouvelle tortue après l'exécution *)
(*                de la commande                       *)
(*-----------------------------------------------------*)
let interp_cmd (c : t_cmd) (s : t_state) : t_turtle =
  let (env, turtle) = s in
  match c with
  | Forward e -> Turtle.move_fwd turtle (interp_expr env e)
  | Backward e -> Turtle.move_bck turtle (interp_expr env e)
  | Right e -> Turtle.turn_right turtle (interp_expr env e)
  | Left e -> Turtle.turn_left turtle (interp_expr env e)
  | PenUp -> Turtle.nodraw turtle
  | PenDown -> Turtle.draw turtle
  | Clear -> Turtle.reset ()
;;


(*-----------------------------------------------------*)
(* Interprétation d'une instruction                    *)
(*   @param c   : l'instruction à interpéter           *)
(*   @param s   : un état composé d'un environnement   *) 
(*                et de la tortue courante             *)
(*                                                     *)
(*   @return    : le nouvel état après l'exécution     *)
(*                de l'instruction                     *)
(*-----------------------------------------------------*)
let rec interp_instr (i : t_instr) (s : t_state) : t_state =
  let (env, turtle) = s in
  match i with
  | Define (id, e) -> 
      let val_e = interp_expr env e in
      let new_env = Env.add_binding env id val_e in
      (new_env, turtle)
  | Cmd c -> 
      let new_turtle = interp_cmd c s in
      (env, new_turtle)
  | Seq (i1, i2) -> 
      let new_state = interp_instr i1 s in
      interp_instr i2 new_state
  | Repeat (e, i_0) ->
      let nb = interp_expr env e in
      iterate nb (fun state_courant -> interp_instr i_0 state_courant) s
;;
 

let rec iterate n f a =
  if n > 0 then iterate (n-1) f (f a) else a
;;