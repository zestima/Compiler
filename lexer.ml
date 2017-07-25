# 1 "lexer.mll"
 
	Open Lexing
	(*Open Parser*)
	(*Open Pretty_print*)

	let print_error st pos = prerr_string ("Erro lexico em" ^pp_position pos^ ", comando "^st^" inválido \n")
	

	let incr_pos lx=
		let pos = lx.lex_curr_p in
		lx.lex_curr_p <-
			{pos with pos_bol = pos.pos_cnum ; pos_lnum = pos.pos_lnum +1}


	type token =
		| SET | LET | IN | PRINT | STRUCT | TYPEDEF | FUNCTION | DEF | RETURN | IF | ELSE | WHILE | SEQ | TO (*Keywords *)
		| EOF (*End of file *)
		| INT | RINT | MATRIX | VOID | VECTOR | BOOL | UBITS
		| LP | RP | RSP | RLP | OB | CB  (* Divisões *)
		| PLUS | MINUS | TIMES | DIV | MORE | LESS | EQUALITY | OR
		| EQUALS (* Igual *)
		| DOT | COMMA | DDOT (* Pontuação2 *)
                | INTEGER of int 
		| IDENT of string

		(*
		%token SET LET IN PRINT STRUCT TYPEDEF FUNCTION DEF RETURN IF ELSE WHILE SEQ TO		
		%token EOF (*End of file *)
		%token INT RINT MATRIX VOID VECTOR BOOL UBITS (* Type *)
		%token LP RP RSP RLP OB CB  (* Divisões *)
		%token PLUS MINUS TIMES DIV MORE LESS EQUALITY OR (* Operadores matematicos *)
		%token EQUALS (* Igual *)
		%token DOT COMMA DDOT (* Pontuação2 *)
                %token <int> INTEGER
	        %toekn <string> IDENT
		*)

# 40 "lexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\232\255\233\255\002\000\235\255\236\255\002\000\238\255\
    \239\255\241\255\242\255\243\255\244\255\002\000\247\255\248\255\
    \249\255\250\255\251\255\252\255\003\000\254\255\255\255\253\255\
    \245\255\237\255\003\000\234\255";
  Lexing.lex_backtrk = 
   "\255\255\255\255\255\255\023\000\255\255\255\255\023\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\009\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\015\000\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255";
  Lexing.lex_default = 
   "\001\000\000\000\000\000\255\255\000\000\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\255\255\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\022\000\021\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \022\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \005\000\004\000\016\000\018\000\011\000\017\000\003\000\015\000\
    \026\000\027\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\020\000\019\000\014\000\012\000\013\000\024\000\
    \023\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\008\000\000\000\007\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\010\000\006\000\009\000\025\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \003\000\026\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\000\000\000\000\000\000\000\000\000\000\013\000\
    \020\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\000\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\000\000\000\000\006\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec lexer lexbuf =
    __ocaml_lex_lexer_rec lexbuf 0
and __ocaml_lex_lexer_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 46 "lexer.mll"
       (lexer lexbuf)
# 146 "lexer.ml"

  | 1 ->
# 47 "lexer.mll"
        (incr_pos lexbuf ; lexer lexbuf)
# 151 "lexer.ml"

  | 2 ->
# 48 "lexer.mll"
        ( EQUALS )
# 156 "lexer.ml"

  | 3 ->
# 49 "lexer.mll"
       ( DOT )
# 161 "lexer.ml"

  | 4 ->
# 50 "lexer.mll"
       ( PLUS )
# 166 "lexer.ml"

  | 5 ->
# 51 "lexer.mll"
       ( MINUS )
# 171 "lexer.ml"

  | 6 ->
# 52 "lexer.mll"
       ( MULT )
# 176 "lexer.ml"

  | 7 ->
# 53 "lexer.mll"
       ( DIV )
# 181 "lexer.ml"

  | 8 ->
# 54 "lexer.mll"
       ( LESS )
# 186 "lexer.ml"

  | 9 ->
# 55 "lexer.mll"
       ( MORE )
# 191 "lexer.ml"

  | 10 ->
# 56 "lexer.mll"
                (GEQ)
# 196 "lexer.ml"

  | 11 ->
# 57 "lexer.mll"
       ( EQUALITY )
# 201 "lexer.ml"

  | 12 ->
# 58 "lexer.mll"
       ( COMMA )
# 206 "lexer.ml"

  | 13 ->
# 59 "lexer.mll"
       ( OB )
# 211 "lexer.ml"

  | 14 ->
# 60 "lexer.mll"
       ( CB )
# 216 "lexer.ml"

  | 15 ->
# 61 "lexer.mll"
       ( DDOT )
# 221 "lexer.ml"

  | 16 ->
# 62 "lexer.mll"
       ( LSP )
# 226 "lexer.ml"

  | 17 ->
# 63 "lexer.mll"
       ( RSP )
# 231 "lexer.ml"

  | 18 ->
# 64 "lexer.mll"
        ( OR )
# 236 "lexer.ml"

  | 19 ->
# 65 "lexer.mll"
       ( LP )
# 241 "lexer.ml"

  | 20 ->
# 66 "lexer.mll"
       ( RP )
# 246 "lexer.ml"

  | 21 ->
# 67 "lexer.mll"
         (THREEDOT)
# 251 "lexer.ml"

  | 22 ->
# 68 "lexer.mll"
        ( EOF )
# 256 "lexer.ml"

  | 23 ->
let
# 69 "lexer.mll"
        str
# 262 "lexer.ml"
= Lexing.sub_lexeme_char lexbuf lexbuf.Lexing.lex_start_pos in
# 69 "lexer.mll"
            ( print_error (str) (lx.lex_curr_p) )
# 266 "lexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; 
      __ocaml_lex_lexer_rec lexbuf __ocaml_lex_state

;;

