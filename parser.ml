
exception Error

let _eRR =
  Error

type token = 
  | WHILE
  | VOID
  | VECTOR
  | UBITS
  | TYPEDEF
  | TO
  | THREEDOT
  | STRUCT
  | SEQ
  | RSP
  | RP
  | RINT
  | RETURN
  | PLUS
  | OR
  | OF
  | OB
  | MULT
  | MORE
  | MINUS
  | MATRIX
  | LSP
  | LP
  | LESS
  | INTEGER of (
# 15 "parser.mly"
               (int)
# 36 "parser.ml"
)
  | IF
  | IDENT of (
# 16 "parser.mly"
        (string)
# 42 "parser.ml"
)
  | EQUALS
  | EQUALITY
  | EOF
  | ELSE
  | DOT
  | DIV
  | DEF
  | DDOT
  | COMMA
  | CB
  | BY
  | BOOL

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState176
  | MenhirState174
  | MenhirState172
  | MenhirState169
  | MenhirState168
  | MenhirState166
  | MenhirState164
  | MenhirState161
  | MenhirState152
  | MenhirState150
  | MenhirState145
  | MenhirState139
  | MenhirState136
  | MenhirState132
  | MenhirState122
  | MenhirState120
  | MenhirState118
  | MenhirState115
  | MenhirState112
  | MenhirState110
  | MenhirState108
  | MenhirState106
  | MenhirState103
  | MenhirState99
  | MenhirState97
  | MenhirState95
  | MenhirState92
  | MenhirState90
  | MenhirState88
  | MenhirState73
  | MenhirState72
  | MenhirState71
  | MenhirState70
  | MenhirState67
  | MenhirState64
  | MenhirState60
  | MenhirState45
  | MenhirState42
  | MenhirState39
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState24
  | MenhirState20
  | MenhirState16
  | MenhirState13
  | MenhirState12
  | MenhirState9
  | MenhirState8
  | MenhirState6
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
open Printf
open Lexing
open Ast

# 124 "parser.ml"

let rec _menhir_run145 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_condition -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState145 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState145
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState145

and _menhir_goto_comma_exp : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_comma_exp -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv657 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv655 * _menhir_state) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _, _2), _, _3) = _menhir_stack in
        let _1 = () in
        let _v : 'tv_comma_exp = 
# 95 "parser.mly"
                                      (_2)
# 160 "parser.ml"
         in
        _menhir_goto_comma_exp _menhir_env _menhir_stack _menhir_s _v) : 'freshtv656)) : 'freshtv658)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv669 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 168 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv665 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 178 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv661 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 188 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv659 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 195 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp)) = Obj.magic _menhir_stack in
                ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _7), _, _8) = _menhir_stack in
                let _10 = () in
                let _9 = () in
                let _6 = () in
                let _5 = () in
                let _3 = () in
                let _1 = () in
                let _v : 'tv_decId = 
# 36 "parser.mly"
                                                                       (IDDef(_2,_4,_7))
# 207 "parser.ml"
                 in
                _menhir_goto_decId _menhir_env _menhir_stack _menhir_s _v) : 'freshtv660)) : 'freshtv662)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((((('freshtv663 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 217 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv667 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 228 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv668)) : 'freshtv670)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((((('freshtv677 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 237 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 241 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((((('freshtv673 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 251 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 255 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((((('freshtv671 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 262 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 266 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
            ((let ((((((((_menhir_stack, _menhir_s), _2), _4), _, _6), _, _9), _, _11), _, _13), _, _14) = _menhir_stack in
            let _15 = () in
            let _12 = () in
            let _10 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_functionExe = 
# 33 "parser.mly"
                                                                                                           (FuncDef(_2,Some,_6,Some,_11,_13))
# 280 "parser.ml"
             in
            _menhir_goto_functionExe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((((((('freshtv675 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 290 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 294 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) * _menhir_state * 'tv_comma_exp) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv676)) : 'freshtv678)
    | _ ->
        _menhir_fail ()

and _menhir_goto_functionExe : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_functionExe -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_functionExe) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | EOF ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | TYPEDEF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState174
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv654)

and _menhir_goto_loop_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loop_statement -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv651) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loop_statement) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv649) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_loop_statement) = _v in
    ((let _v : 'tv_statement = 
# 71 "parser.mly"
                   (_1)
# 333 "parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv650)) : 'freshtv652)

and _menhir_goto_if_else : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_if_else -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv647) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_if_else) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv645) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_if_else) = _v in
    ((let _v : 'tv_statement = 
# 72 "parser.mly"
            (_1)
# 350 "parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv646)) : 'freshtv648)

and _menhir_goto_assignment : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_assignment -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv643) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_assignment) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv641) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : 'tv_assignment) = _v in
    ((let _v : 'tv_statement = 
# 73 "parser.mly"
               (_1)
# 367 "parser.ml"
     in
    _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv642)) : 'freshtv644)

and _menhir_goto_condition : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_condition -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv621 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv617 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OB ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv613 * _menhir_state)) * _menhir_state * 'tv_condition)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DEF ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | IDENT _v ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState103 _v
                | IF ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | SEQ ->
                    _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | WHILE ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState103
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState103) : 'freshtv614)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv615 * _menhir_state)) * _menhir_state * 'tv_condition)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv616)) : 'freshtv618)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv619 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv620)) : 'freshtv622)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OB ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv623 * _menhir_state)) * _menhir_state * 'tv_condition)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DEF ->
                    _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | IDENT _v ->
                    _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
                | IF ->
                    _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | SEQ ->
                    _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | WHILE ->
                    _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState115
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv624)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv625 * _menhir_state)) * _menhir_state * 'tv_condition)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv626)) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv629 * _menhir_state)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv639 * _menhir_state * 'tv_condition)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OR ->
            _menhir_run145 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_condition)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv633 * _menhir_state * 'tv_condition)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _v : 'tv_condition = 
# 51 "parser.mly"
                              (DefCond(OR,_1,_3))
# 491 "parser.ml"
             in
            _menhir_goto_condition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv634)) : 'freshtv636)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv637 * _menhir_state * 'tv_condition)) * _menhir_state * 'tv_condition) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv638)) : 'freshtv640)
    | _ ->
        _menhir_fail ()

and _menhir_reduce6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : 'tv_comma_exp = 
# 96 "parser.mly"
                  (None)
# 509 "parser.ml"
     in
    _menhir_goto_comma_exp _menhir_env _menhir_stack _menhir_s _v

and _menhir_run72 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState72 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState72
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState72

and _menhir_goto_math : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_math -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv605 * _menhir_state) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv601 * _menhir_state) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv599 * _menhir_state) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 56 "parser.mly"
                (_2)
# 556 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv600)) : 'freshtv602)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv603 * _menhir_state) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv611 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 571 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv607 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 581 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DEF ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | IDENT _v ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState152 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | SEQ ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | WHILE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState152
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState152) : 'freshtv608)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv609 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 607 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv610)) : 'freshtv612)
    | _ ->
        _menhir_fail ()

and _menhir_run33 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33

and _menhir_run35 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35

and _menhir_run37 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run39 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState39 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState39
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState39

and _menhir_reduce40 : _menhir_env -> (((((('ttv_tail * _menhir_state * (
# 16 "parser.mly"
        (string)
# 697 "parser.ml"
))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (((_menhir_stack, _menhir_s, _1), _, _3), _, _5) = _menhir_stack in
    let _7 = () in
    let _6 = () in
    let _4 = () in
    let _2 = () in
    let _v : 'tv_positionMatrix = 
# 93 "parser.mly"
                                                              (PosMatrix(_1,_3,_5))
# 708 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv597) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_positionMatrix) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState168 | MenhirState150 | MenhirState145 | MenhirState139 | MenhirState136 | MenhirState118 | MenhirState122 | MenhirState120 | MenhirState112 | MenhirState108 | MenhirState106 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState92 | MenhirState72 | MenhirState70 | MenhirState6 | MenhirState42 | MenhirState8 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState9 | MenhirState24 | MenhirState20 | MenhirState12 | MenhirState16 | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv589 * _menhir_state * 'tv_positionMatrix) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv587 * _menhir_state * 'tv_positionMatrix) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_expression = 
# 59 "parser.mly"
                    (Some)
# 725 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv588)) : 'freshtv590)
    | MenhirState166 | MenhirState90 | MenhirState103 | MenhirState152 | MenhirState110 | MenhirState115 | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_positionMatrix) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv591 * _menhir_state * 'tv_positionMatrix) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState139 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState139
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState139) : 'freshtv592)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_positionMatrix) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv594)) : 'freshtv596)
    | _ ->
        _menhir_fail ()) : 'freshtv598)

and _menhir_goto_straightParenteses : _menhir_env -> 'ttv_tail -> 'tv_straightParenteses -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv585 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 770 "parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_v : 'tv_straightParenteses) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv583 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 777 "parser.ml"
    )) = Obj.magic _menhir_stack in
    let (_2 : 'tv_straightParenteses) = _v in
    ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
    let _v : 'tv_positionVector = 
# 91 "parser.mly"
                                         (PosVector(_1,_2))
# 784 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv581) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_positionVector) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState168 | MenhirState150 | MenhirState145 | MenhirState139 | MenhirState136 | MenhirState118 | MenhirState122 | MenhirState120 | MenhirState112 | MenhirState108 | MenhirState106 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState92 | MenhirState72 | MenhirState70 | MenhirState6 | MenhirState42 | MenhirState8 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState9 | MenhirState24 | MenhirState20 | MenhirState12 | MenhirState16 | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573 * _menhir_state * 'tv_positionVector) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv571 * _menhir_state * 'tv_positionVector) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_expression = 
# 58 "parser.mly"
                    (Some)
# 801 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)) : 'freshtv574)
    | MenhirState166 | MenhirState90 | MenhirState103 | MenhirState152 | MenhirState110 | MenhirState115 | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv579 * _menhir_state * 'tv_positionVector) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv575 * _menhir_state * 'tv_positionVector) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState136 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState136
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState136) : 'freshtv576)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv577 * _menhir_state * 'tv_positionVector) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()) : 'freshtv582)) : 'freshtv584)) : 'freshtv586)

and _menhir_run20 : _menhir_env -> ('ttv_tail) * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_run23 : _menhir_env -> ('ttv_tail) * _menhir_state * 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv569) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
    ((let (_menhir_stack, _, _2) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_straightParenteses = 
# 98 "parser.mly"
                                        (_2)
# 871 "parser.ml"
     in
    _menhir_goto_straightParenteses _menhir_env _menhir_stack _v) : 'freshtv570)

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
        (string)
# 878 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSP ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
    | EQUALITY | LESS | MORE ->
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
    | OR | RP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 894 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_condition = 
# 52 "parser.mly"
          (_1)
# 900 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv566)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 910 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)

and _menhir_goto_statement : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_statement -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv517 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv513 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ELSE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv507 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | OB ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv503 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | DEF ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                    | IDENT _v ->
                        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
                    | IF ->
                        _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                    | SEQ ->
                        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                    | WHILE ->
                        _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState132
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv504)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((((('freshtv505 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
            | CB | RETURN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv509 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
                ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
                let _7 = () in
                let _5 = () in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_if_else = 
# 81 "parser.mly"
                                            (IfCond(_3,_6,None))
# 976 "parser.ml"
                 in
                _menhir_goto_if_else _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv511 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv515 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv516)) : 'freshtv518)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv525 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv521 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv519 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, _3), _, _6), _, _10) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _8 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_if_else = 
# 80 "parser.mly"
                                                                 (IfCond(_3,_6,_10))
# 1017 "parser.ml"
             in
            _menhir_goto_if_else _menhir_env _menhir_stack _menhir_s _v) : 'freshtv520)) : 'freshtv522)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv523 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv524)) : 'freshtv526)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv533 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1032 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv529 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1042 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv527 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1049 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (((((_menhir_stack, _menhir_s), _2), _, _4), _, _6), _, _8) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_loop_statement = 
# 84 "parser.mly"
                                                                   (SeqLoop(_2,_4,_6,None,_8))
# 1060 "parser.ml"
             in
            _menhir_goto_loop_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv528)) : 'freshtv530)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv531 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1070 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv532)) : 'freshtv534)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv541 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1079 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv537 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1089 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv535 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1096 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let ((((((_menhir_stack, _menhir_s), _2), _, _4), _, _6), _, _8), _, _10) = _menhir_stack in
            let _11 = () in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_loop_statement = 
# 85 "parser.mly"
                                                                           (SeqLoop(_2,_4,_6,_8,_10))
# 1108 "parser.ml"
             in
            _menhir_goto_loop_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv536)) : 'freshtv538)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((((('freshtv539 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1118 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv540)) : 'freshtv542)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv549 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv545 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv543 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_loop_statement = 
# 83 "parser.mly"
                                                      (WhileLoop(_3,_6))
# 1143 "parser.ml"
             in
            _menhir_goto_loop_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv544)) : 'freshtv546)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv547 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv548)) : 'freshtv550)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv557 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1158 "parser.ml"
        ))))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv553 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1168 "parser.ml"
            ))))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv551 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1175 "parser.ml"
            ))))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _, _6), _, _8) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_functionExe = 
# 34 "parser.mly"
                                                    (FuncDef(_2,None,_6,None,StateDef(_8),None))
# 1187 "parser.ml"
             in
            _menhir_goto_functionExe _menhir_env _menhir_stack _menhir_s _v) : 'freshtv552)) : 'freshtv554)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv555 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1197 "parser.ml"
            ))))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv556)) : 'freshtv558)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((('freshtv563 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1206 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 1210 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RETURN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((('freshtv559 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1220 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 1224 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState168 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState168
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState168) : 'freshtv560)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((((('freshtv561 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1250 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 1254 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)
    | _ ->
        _menhir_fail ()

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_expression -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv335 * _menhir_state * 'tv_matrix) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv333 * _menhir_state * 'tv_matrix) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_expression = 
# 61 "parser.mly"
                       (_2)
# 1274 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv334)) : 'freshtv336)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv339 * _menhir_state * 'tv_vector) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv337 * _menhir_state * 'tv_vector) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_expression = 
# 60 "parser.mly"
                       (_2)
# 1286 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv338)) : 'freshtv340)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv345 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1294 "parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv341 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1304 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState24 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState24
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState24) : 'freshtv342)
        | RSP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | THREEDOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv343 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1334 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv353) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv349) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv347) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _, _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_straightParenteses = 
# 99 "parser.mly"
                                              (_2,_4)
# 1357 "parser.ml"
             in
            _menhir_goto_straightParenteses _menhir_env _menhir_stack _v) : 'freshtv348)) : 'freshtv350)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv351) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv352)) : 'freshtv354)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv363 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1372 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv359 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1382 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv355 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1392 "parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)) : 'freshtv356)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv357 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1403 "parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv361 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1414 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv362)) : 'freshtv364)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv371 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv367 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv365 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, _2) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_expression = 
# 55 "parser.mly"
                      (_2)
# 1444 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv366)) : 'freshtv368)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv369 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv370)) : 'freshtv372)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv375 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv373 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_math = 
# 75 "parser.mly"
                                 (Math(Sum,_1,_3))
# 1464 "parser.ml"
         in
        _menhir_goto_math _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)) : 'freshtv376)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv379 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv377 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_math = 
# 77 "parser.mly"
                                 (Math(Mult,_1,_3))
# 1477 "parser.ml"
         in
        _menhir_goto_math _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)) : 'freshtv380)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv383 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_math = 
# 76 "parser.mly"
                                  (Math(Minus,_1,_3))
# 1490 "parser.ml"
         in
        _menhir_goto_math _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)) : 'freshtv384)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv385 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_math = 
# 78 "parser.mly"
                                (Math(Div,_1,_3))
# 1503 "parser.ml"
         in
        _menhir_goto_math _menhir_env _menhir_stack _menhir_s _v) : 'freshtv386)) : 'freshtv388)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv393 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv389 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState42 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState42
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState42) : 'freshtv390)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv391 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv392)) : 'freshtv394)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv403 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv399 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | INTEGER _v ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | RINT ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | STRUCT ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | UBITS ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState45
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv396)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv397 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv398)) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv401 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OF ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv405 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | INTEGER _v ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | RINT ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | STRUCT ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | UBITS ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState60
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv406)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv407 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv408)) : 'freshtv410)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv412)) : 'freshtv414)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv415 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1648 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | CB ->
            _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState71
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState71) : 'freshtv416)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | CB ->
            _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState73
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState73) : 'freshtv418)
    | MenhirState145 | MenhirState112 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv427 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALITY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv419 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState99 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState99
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState99) : 'freshtv420)
        | LESS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv421 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState97 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState97
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState97) : 'freshtv422)
        | MORE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv423 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState95 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState95
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState95) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv425 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_condition = 
# 50 "parser.mly"
                               (DefCond(MORE,_1,_3))
# 1758 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_condition = 
# 49 "parser.mly"
                               (DefCond(LESS,_1,_3))
# 1771 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv434)) : 'freshtv436)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv439 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv437 * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_condition = 
# 48 "parser.mly"
                                          (DefCond(EQUALITY,_1,_3))
# 1784 "parser.ml"
         in
        _menhir_goto_condition _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv445 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1792 "parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | TO ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv441 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1802 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState108
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108) : 'freshtv442)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv443 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1828 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv444)) : 'freshtv446)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv453 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1837 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv447 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1847 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState150 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState150
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState150) : 'freshtv448)
        | OB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv449 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1871 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DEF ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | IDENT _v ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | SEQ ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | WHILE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState110
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110) : 'freshtv450)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv451 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 1897 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv452)) : 'freshtv454)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv459 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1906 "parser.ml"
        ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1916 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState122 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState122
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState122) : 'freshtv456)
        | RSP ->
            _menhir_run23 _menhir_env (Obj.magic _menhir_stack)
        | THREEDOT ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv457 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1946 "parser.ml"
            ))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv458)) : 'freshtv460)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv479 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1955 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv475 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1965 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv471 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 1975 "parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RP ->
                    _menhir_reduce40 _menhir_env (Obj.magic _menhir_stack)
                | CB | RETURN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((((('freshtv467) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _, _2), _, _4) = _menhir_stack in
                    let _6 = () in
                    let _5 = () in
                    let _3 = () in
                    let _1 = () in
                    let _v : 'tv_positionAccess = 
# 68 "parser.mly"
                                                        (_2,_4)
# 1993 "parser.ml"
                     in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv465) = _menhir_stack in
                    let (_v : 'tv_positionAccess) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv463 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2002 "parser.ml"
                    )))) * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2006 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_v : 'tv_positionAccess) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv461 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2013 "parser.ml"
                    )))) * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2017 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    let (_5 : 'tv_positionAccess) = _v in
                    ((let ((_menhir_stack, _menhir_s, _1), _, _4) = _menhir_stack in
                    let _3 = () in
                    let _2 = () in
                    let _v : 'tv_assignment = 
# 64 "parser.mly"
                                          (DefAss(Equals,_1,_4))
# 2026 "parser.ml"
                     in
                    _menhir_goto_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv462)) : 'freshtv464)) : 'freshtv466)) : 'freshtv468)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((((('freshtv469 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2036 "parser.ml"
                    ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((((('freshtv473 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2047 "parser.ml"
                ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv474)) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv477 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2058 "parser.ml"
            ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv487 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2067 "parser.ml"
        )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv483 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2077 "parser.ml"
            )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv481 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2084 "parser.ml"
            )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, _1), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _2 = () in
            let _v : 'tv_assignment = 
# 63 "parser.mly"
                                          (DefAss(Equals,_1,_4))
# 2093 "parser.ml"
             in
            _menhir_goto_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv485 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2103 "parser.ml"
            )))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state * 'tv_positionVector)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv489 * _menhir_state * 'tv_positionVector)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_assignment = 
# 66 "parser.mly"
                                      (DefAss(Equals,_1,_3))
# 2117 "parser.ml"
         in
        _menhir_goto_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv490)) : 'freshtv492)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv495 * _menhir_state * 'tv_positionMatrix)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv493 * _menhir_state * 'tv_positionMatrix)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _3) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_assignment = 
# 65 "parser.mly"
                                      (DefAss(Equals,_1,_3))
# 2130 "parser.ml"
         in
        _menhir_goto_assignment _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv499 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DIV ->
            _menhir_run39 _menhir_env (Obj.magic _menhir_stack)
        | MINUS ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv497 * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv501 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2159 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 2163 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            _menhir_run72 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | CB ->
            _menhir_reduce6 _menhir_env (Obj.magic _menhir_stack) MenhirState169
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState169) : 'freshtv502)
    | _ ->
        _menhir_fail ()

and _menhir_reduce14 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2182 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
    let _v : 'tv_expression = 
# 54 "parser.mly"
                  (_1)
# 2189 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run12 : _menhir_env -> 'ttv_tail * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2196 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run91 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | INTEGER _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | LP ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | MATRIX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | VECTOR ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv330)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv332)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
        (string)
# 2263 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv321 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2274 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv322)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv323 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2300 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv324)) : 'freshtv326)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv328)

and _menhir_run111 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | INTEGER _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | LP ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | MATRIX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | VECTOR ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv318)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv320)

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
        (string)
# 2349 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EQUALS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2361 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2371 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv307 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2381 "parser.ml"
                )))) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState118 in
                let (_v : (
# 16 "parser.mly"
        (string)
# 2387 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LSP ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv303 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2398 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | IDENT _v ->
                        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
                    | INTEGER _v ->
                        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
                    | LP ->
                        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState120
                    | MATRIX ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState120
                    | VECTOR ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState120
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv304)
                | RP ->
                    _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv305 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2426 "parser.ml"
                    )))) * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2430 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv306)) : 'freshtv308)
            | INTEGER _v ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | LP ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv310)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv311 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2453 "parser.ml"
            ))) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv312)) : 'freshtv314)
    | LSP ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2466 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv316)

and _menhir_goto_typedef : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typedef -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState172
    | EOF ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState172
    | TYPEDEF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState172
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv302)

and _menhir_goto_decId : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_decId -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv293 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2499 "parser.ml"
        ))) * _menhir_state)) * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RSP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv289 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2509 "parser.ml"
            ))) * _menhir_state)) * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv287 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2516 "parser.ml"
            ))) * _menhir_state)) * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _2), _), _, _6) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typedef = 
# 30 "parser.mly"
                                                   (TypeDef(_2,_6))
# 2527 "parser.ml"
             in
            _menhir_goto_typedef _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)) : 'freshtv290)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv291 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2537 "parser.ml"
            ))) * _menhir_state)) * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)) : 'freshtv294)
    | MenhirState166 | MenhirState90 | MenhirState103 | MenhirState152 | MenhirState110 | MenhirState115 | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
        let _v : 'tv_statement = 
# 70 "parser.mly"
                 (DecId(_1))
# 2550 "parser.ml"
         in
        _menhir_goto_statement _menhir_env _menhir_stack _menhir_s _v) : 'freshtv296)) : 'freshtv298)
    | MenhirState0 | MenhirState172 | MenhirState176 | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DEF ->
            _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | EOF ->
            _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | TYPEDEF ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState176
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState176) : 'freshtv300)
    | _ ->
        _menhir_fail ()

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | INTEGER _v ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState9 _v
    | LP ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState9
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState9

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
               (int)
# 2601 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 15 "parser.mly"
               (int)
# 2611 "parser.ml"
    )) = _v in
    ((let _v : 'tv_expression = 
# 57 "parser.mly"
             (_1)
# 2616 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v) : 'freshtv286)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 16 "parser.mly"
        (string)
# 2623 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSP ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack)
    | BY | CB | COMMA | DIV | EQUALITY | LESS | MINUS | MORE | MULT | OB | OR | PLUS | RETURN | RP | RSP | THREEDOT | TO ->
        _menhir_reduce14 _menhir_env (Obj.magic _menhir_stack)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 2641 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv284)

and _menhir_goto_typeExpr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_typeExpr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv221 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv217 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv215 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), _, _3), _, _5), _, _8) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_matrix = 
# 89 "parser.mly"
                                                                   (MatrixCond(_3,_5,_8))
# 2672 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_matrix) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState168 | MenhirState150 | MenhirState145 | MenhirState139 | MenhirState136 | MenhirState118 | MenhirState122 | MenhirState120 | MenhirState112 | MenhirState108 | MenhirState106 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState92 | MenhirState72 | MenhirState70 | MenhirState6 | MenhirState42 | MenhirState8 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState9 | MenhirState24 | MenhirState20 | MenhirState12 | MenhirState16 | MenhirState13 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_matrix) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
                | INTEGER _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
                | LP ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState16
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16) : 'freshtv208)
            | MenhirState161 | MenhirState164 | MenhirState88 | MenhirState3 | MenhirState67 | MenhirState60 | MenhirState45 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv211 * _menhir_state * 'tv_matrix) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv209 * _menhir_state * 'tv_matrix) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
                let _v : 'tv_typeExpr = 
# 41 "parser.mly"
          (_1)
# 2709 "parser.ml"
                 in
                _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)
            | _ ->
                _menhir_fail ()) : 'freshtv214)) : 'freshtv216)) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv219 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv220)) : 'freshtv222)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv237 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv233 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv231 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, _3), _, _6) = _menhir_stack in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_vector = 
# 87 "parser.mly"
                                                  (VectorCond(_3,_6))
# 2742 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv229) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : 'tv_vector) = _v in
            ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            match _menhir_s with
            | MenhirState168 | MenhirState150 | MenhirState145 | MenhirState139 | MenhirState136 | MenhirState118 | MenhirState122 | MenhirState120 | MenhirState112 | MenhirState108 | MenhirState106 | MenhirState99 | MenhirState97 | MenhirState95 | MenhirState92 | MenhirState72 | MenhirState70 | MenhirState6 | MenhirState42 | MenhirState8 | MenhirState39 | MenhirState37 | MenhirState35 | MenhirState33 | MenhirState9 | MenhirState24 | MenhirState20 | MenhirState16 | MenhirState13 | MenhirState12 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv223 * _menhir_state * 'tv_vector) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
                | INTEGER _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
                | LP ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv224)
            | MenhirState164 | MenhirState161 | MenhirState88 | MenhirState3 | MenhirState67 | MenhirState60 | MenhirState45 ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv227 * _menhir_state * 'tv_vector) = Obj.magic _menhir_stack in
                ((let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv225 * _menhir_state * 'tv_vector) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
                let _v : 'tv_typeExpr = 
# 43 "parser.mly"
          (_1)
# 2779 "parser.ml"
                 in
                _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)) : 'freshtv228)
            | _ ->
                _menhir_fail ()) : 'freshtv230)) : 'freshtv232)) : 'freshtv234)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv235 * _menhir_state)) * _menhir_state * 'tv_expression))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)) : 'freshtv238)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv251 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2796 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv241 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2806 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv239 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2813 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_decId = 
# 37 "parser.mly"
                                     (IDDef(_2,_4,None))
# 2822 "parser.ml"
             in
            _menhir_goto_decId _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)) : 'freshtv242)
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv247 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2830 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | OB ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv243 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2840 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | IDENT _v ->
                    _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | INTEGER _v ->
                    _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState70 _v
                | LP ->
                    _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState70
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState70) : 'freshtv244)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((('freshtv245 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2866 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv246)) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv249 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2877 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv259 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2886 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DOT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv255 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2896 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv253 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2903 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _2), _, _4) = _menhir_stack in
            let _5 = () in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_typedef = 
# 31 "parser.mly"
                                           (TypeDef(_2,_4))
# 2912 "parser.ml"
             in
            _menhir_goto_typedef _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)) : 'freshtv256)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv257 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2922 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)) : 'freshtv260)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv265 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2931 "parser.ml"
        ))))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv261 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2941 "parser.ml"
            ))))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DEF ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | IDENT _v ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState90 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | SEQ ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | WHILE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState90
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState90) : 'freshtv262)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv263 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2967 "parser.ml"
            ))))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv264)) : 'freshtv266)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv275 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2976 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 2980 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv271 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 2990 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 2994 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DDOT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv267 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3004 "parser.ml"
                ))) * (
# 16 "parser.mly"
        (string)
# 3008 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BOOL ->
                    _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | INTEGER _v ->
                    _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
                | MATRIX ->
                    _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | RINT ->
                    _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | STRUCT ->
                    _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | UBITS ->
                    _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | VECTOR ->
                    _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | VOID ->
                    _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState164
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv268)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (((((('freshtv269 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3040 "parser.ml"
                ))) * (
# 16 "parser.mly"
        (string)
# 3044 "parser.ml"
                ))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)) : 'freshtv272)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv273 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3055 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 3059 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)) : 'freshtv276)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv281 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3068 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3072 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | OB ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv277 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3082 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 3086 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | DEF ->
                _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | IDENT _v ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState166 _v
            | IF ->
                _menhir_run111 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | SEQ ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | WHILE ->
                _menhir_run91 _menhir_env (Obj.magic _menhir_stack) MenhirState166
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState166) : 'freshtv278)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((((((('freshtv279 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3112 "parser.ml"
            ))) * (
# 16 "parser.mly"
        (string)
# 3116 "parser.ml"
            ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv280)) : 'freshtv282)
    | _ ->
        _menhir_fail ()

and _menhir_reduce54 : _menhir_env -> 'ttv_tail * _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let (_menhir_stack, _menhir_s) = _menhir_stack in
    let _1 = () in
    let _v : 'tv_typeExpr = 
# 45 "parser.mly"
          ()
# 3130 "parser.ml"
     in
    _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v

and _menhir_run65 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
        (string)
# 3146 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DDOT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv201 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3161 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)) : 'freshtv204)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv205 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv206)

and _menhir_goto_instr : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_instr -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv175 * _menhir_state * 'tv_typedef) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_instr = 
# 27 "parser.mly"
                     (_2::_1)
# 3186 "parser.ml"
         in
        _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv176)) : 'freshtv178)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state * 'tv_functionExe) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state * 'tv_functionExe) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_instr = 
# 26 "parser.mly"
                         (_2::_1)
# 3198 "parser.ml"
         in
        _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv180)) : 'freshtv182)
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state * 'tv_decId) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state * 'tv_decId) * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _1), _, _2) = _menhir_stack in
        let _v : 'tv_instr = 
# 25 "parser.mly"
                   (_2::_1)
# 3210 "parser.ml"
         in
        _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)) : 'freshtv186)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv199 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _1) = _menhir_stack in
            let _2 = () in
            let _v : (
# 19 "parser.mly"
      (unit)
# 3229 "parser.ml"
            ) = 
# 23 "parser.mly"
                       ()
# 3233 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv191) = _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "parser.mly"
      (unit)
# 3241 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv189) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_v : (
# 19 "parser.mly"
      (unit)
# 3249 "parser.ml"
            )) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv187) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = _menhir_s in
            let (_1 : (
# 19 "parser.mly"
      (unit)
# 3257 "parser.ml"
            )) = _v in
            (Obj.magic _1 : 'freshtv188)) : 'freshtv190)) : 'freshtv192)) : 'freshtv194)) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_instr) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)) : 'freshtv200)
    | _ ->
        _menhir_fail ()

and _menhir_run4 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv173) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_typeExpr = 
# 42 "parser.mly"
        ()
# 3280 "parser.ml"
     in
    _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv169 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | INTEGER _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState6 _v
        | LP ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | MATRIX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | VECTOR ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState6
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState6) : 'freshtv170)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv171 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)

and _menhir_run46 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv165 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | INTEGER _v ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv161 * _menhir_state)) = Obj.magic _menhir_stack in
            let (_v : (
# 15 "parser.mly"
               (int)
# 3336 "parser.ml"
            )) = _v in
            ((let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | RSP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv157 * _menhir_state)) * (
# 15 "parser.mly"
               (int)
# 3347 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv155 * _menhir_state)) * (
# 15 "parser.mly"
               (int)
# 3354 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _3) = _menhir_stack in
                let _4 = () in
                let _2 = () in
                let _1 = () in
                let _v : 'tv_typeExpr = 
# 46 "parser.mly"
                         ()
# 3363 "parser.ml"
                 in
                _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv156)) : 'freshtv158)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv159 * _menhir_state)) * (
# 15 "parser.mly"
               (int)
# 3373 "parser.ml"
                )) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)) : 'freshtv162)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv163 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)) : 'freshtv166)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv167 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)

and _menhir_run50 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack)

and _menhir_run51 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_typeExpr = 
# 40 "parser.mly"
        ()
# 3408 "parser.ml"
     in
    _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LSP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv149 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | IDENT _v ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | INTEGER _v ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
        | LP ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | MATRIX ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | VECTOR ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState8
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8) : 'freshtv150)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv151 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)

and _menhir_run52 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 15 "parser.mly"
               (int)
# 3449 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_1 : (
# 15 "parser.mly"
               (int)
# 3459 "parser.ml"
    )) = _v in
    ((let _v : 'tv_typeExpr = 
# 39 "parser.mly"
                  (_1)
# 3464 "parser.ml"
     in
    _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv148)

and _menhir_run53 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv145) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_typeExpr = 
# 44 "parser.mly"
        ()
# 3478 "parser.ml"
     in
    _menhir_goto_typeExpr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv146)

and _menhir_run67 : _menhir_env -> ('ttv_tail * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3485 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | BOOL ->
        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | INTEGER _v ->
        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState67 _v
    | MATRIX ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | RINT ->
        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | STRUCT ->
        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | UBITS ->
        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | VECTOR ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | VOID ->
        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState67
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState67

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState176 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41 * _menhir_state * 'tv_decId) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv42)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43 * _menhir_state * 'tv_functionExe) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv44)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state * 'tv_typedef) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)
    | MenhirState169 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((((((('freshtv47 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3535 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3539 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState168 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((((('freshtv49 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3548 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3552 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) * _menhir_state * 'tv_statement)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)
    | MenhirState166 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((((('freshtv51 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3561 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3565 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv53 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3574 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3578 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState161 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv55 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3587 "parser.ml"
        ))) * (
# 16 "parser.mly"
        (string)
# 3591 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv56)
    | MenhirState152 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv57 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3600 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_math)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState150 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv59 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3609 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)
    | MenhirState145 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_condition)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState139 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_positionMatrix)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState136 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_positionVector)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((((('freshtv67 * _menhir_state)) * _menhir_state * 'tv_condition))) * _menhir_state * 'tv_statement)))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState122 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv69 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 3638 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 3647 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv73 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 3656 "parser.ml"
        )))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv75 * _menhir_state)) * _menhir_state * 'tv_condition))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv77 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv79 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3675 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv81 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3684 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3693 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState103 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv85 * _menhir_state)) * _menhir_state * 'tv_condition))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState99 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState97 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState95 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState90 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv95 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3727 "parser.ml"
        ))))) * _menhir_state * 'tv_typeExpr)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState88 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv97 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3736 "parser.ml"
        ))))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState73 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState72 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState71 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv103 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3755 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) * _menhir_state * 'tv_expression) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState70 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv105 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3764 "parser.ml"
        ))) * _menhir_state * 'tv_typeExpr))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState67 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv107 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3773 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState64 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv109 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3782 "parser.ml"
        ))) * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv111 * _menhir_state)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv113 * _menhir_state)) * _menhir_state * 'tv_expression)) * _menhir_state * 'tv_expression))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState42 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv115 * _menhir_state)) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState39 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv121 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState24 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv125 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 3826 "parser.ml"
        ))) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState20 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv127) * _menhir_state * 'tv_expression)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState16 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_matrix) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv131 * _menhir_state * 'tv_vector) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState12 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state * (
# 16 "parser.mly"
        (string)
# 3850 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState9 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv135 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState8 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState6 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3874 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv143) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv144)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
        (string)
# 3895 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUALS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv33 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3906 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOOL ->
                _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | INTEGER _v ->
                _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
            | MATRIX ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | RINT ->
                _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | STRUCT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv31 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3924 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState3 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | LSP ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv27 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3936 "parser.ml"
                    ))) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | DEF ->
                        _menhir_run65 _menhir_env (Obj.magic _menhir_stack) MenhirState64
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState64) : 'freshtv28)
                | DOT ->
                    _menhir_reduce54 _menhir_env (Obj.magic _menhir_stack)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv29 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3956 "parser.ml"
                    ))) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv30)) : 'freshtv32)
            | UBITS ->
                _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | VECTOR ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | VOID ->
                _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState3
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv34)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv35 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 3977 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)) : 'freshtv38)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv40)

and _menhir_run83 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_instr = 
# 28 "parser.mly"
           ()
# 3999 "parser.ml"
     in
    _menhir_goto_instr _menhir_env _menhir_stack _menhir_s _v) : 'freshtv26)

and _menhir_run84 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 16 "parser.mly"
        (string)
# 4015 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | DDOT ->
            _menhir_run67 _menhir_env (Obj.magic _menhir_stack)
        | LP ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4028 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | IDENT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv7 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4038 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_v : (
# 16 "parser.mly"
        (string)
# 4043 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DDOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv3 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4054 "parser.ml"
                    ))) * (
# 16 "parser.mly"
        (string)
# 4058 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BOOL ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | INTEGER _v ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState161 _v
                    | MATRIX ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | RINT ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | STRUCT ->
                        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | UBITS ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | VECTOR ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | VOID ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState161
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState161) : 'freshtv4)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv5 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4090 "parser.ml"
                    ))) * (
# 16 "parser.mly"
        (string)
# 4094 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv6)) : 'freshtv8)
            | RP ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv13 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4103 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | DDOT ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv9 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4113 "parser.ml"
                    )))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | BOOL ->
                        _menhir_run53 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | INTEGER _v ->
                        _menhir_run52 _menhir_env (Obj.magic _menhir_stack) MenhirState88 _v
                    | MATRIX ->
                        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | RINT ->
                        _menhir_run51 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | STRUCT ->
                        _menhir_run50 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | UBITS ->
                        _menhir_run46 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | VECTOR ->
                        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | VOID ->
                        _menhir_run4 _menhir_env (Obj.magic _menhir_stack) MenhirState88
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState88) : 'freshtv10)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv11 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4145 "parser.ml"
                    )))) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv12)) : 'freshtv14)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv15 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4156 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv16)) : 'freshtv18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 16 "parser.mly"
        (string)
# 4167 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and fileProgram : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 19 "parser.mly"
      (unit)
# 4194 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env =
      let (lexer : Lexing.lexbuf -> token) = lexer in
      let (lexbuf : Lexing.lexbuf) = lexbuf in
      ((let _tok = Obj.magic () in
      {
        _menhir_lexer = lexer;
        _menhir_lexbuf = lexbuf;
        _menhir_token = _tok;
        _menhir_error = false;
      }) : _menhir_env)
    in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv1) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DEF ->
        _menhir_run84 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        _menhir_run83 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TYPEDEF ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv2))

# 220 "/usr/share/menhir/standard.mly"
  


# 4228 "parser.ml"
