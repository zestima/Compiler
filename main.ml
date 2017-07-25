open Ast


let parse_file name =
                        let ic = open_in name in
                        let lexbuf = Lexing.from_channel ic in
                        let ast = Parser.program Lexer.token lexbuf in
                        let _ = close_in ic in
                        ast
