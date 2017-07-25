OCAMLMAKEFILE = ./OCamlMakefile

SOURCES = ast.ml parser.mly lexer.ml \ main.ml

RESULT = fixec

OCAMLYACC = menhir

include $(OCAMLMAKEFILE)
