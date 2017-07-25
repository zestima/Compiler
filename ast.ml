open Lexing ;;

type vname = string ;;

type opt = Some | None ;; 

type dig = float ;;

type binop = PLUS | MINUS | MULT | DIV ;;

type op = EQUALS | LESS | MORE | OR | EQUALITY ;;

type ttype = INT | RINT | MATRIX | VOID | VECTOR | BOOLEAN | STRUCT | UBITS ;;

type expression = INT | Name of vname | PosVector of vname*expression | PosMatrix of vname*opt*opt | Exp of expression ;; 

type math = binop*expression*expression ;;

type instr = IDDef of vname*ttype*opt 
	   | FuncDef of vname*opt*ttype*opt*instr*opt
	   | TypeDef of vname*ttype
	   | DefCond of op*instr*instr
	   | DefAss of op*vname*expression
	   | Math of binop*expression*expression

and

	statement =  DecId of vname
		| WhileLoop of expression*instr
		| SeqLoop of vname*expression*expression*opt*instr 
		| IfCond of expression*instr*opt 
		| VectorCond of expression*ttype
		| MatrixCond of expression*expression*ttype
;;

type program = instr list ;;



