module(unparameterized("MiniC-ContextFree"),[imports([module(unparameterized("MiniC-Lexical"))])],[exports(conc-grammars(conc-grammars(conc-grammars(context-free-syntax([prod([iter-star(sort("TypeDec")),iter-star(sort("VarDec")),iter-star(sort("FunctionDec")),sort("Exp")],sort("Program"),attrs([term(cons("File"))])),prod([lit("struct"),sort("ID"),lit("{"),iter-star(sort("VarDec")),lit("}"),lit(";")],sort("TypeDec"),attrs([term(cons("StructDec"))])),prod([sort("Type"),sort("ID"),lit(";")],sort("VarDec"),attrs([term(cons("VarDec"))])),prod([sort("ArrayType"),sort("ID"),lit("["),sort("INT"),lit("]"),lit(";")],sort("VarDec"),attrs([term(cons("ArrayDec"))])),prod([sort("Type"),sort("ID"),lit("("),iter-star-sep(sort("Parameter"),lit(",")),lit(")"),lit("{"),iter-star(sort("VarDec")),iter-star(sort("Statement")),lit("return"),sort("Exp"),lit(";"),lit("}")],sort("FunctionDec"),attrs([term(cons("FunctionDef"))])),prod([sort("Type"),sort("ID")],sort("Parameter"),attrs([term(cons("Arg"))])),prod([sort("ArrayType"),sort("ID"),lit("["),lit("]")],sort("Parameter"),attrs([term(cons("ArrayArg"))])),prod([lit("int")],sort("ArrayType"),attrs([term(cons("Int"))])),prod([lit("float")],sort("ArrayType"),attrs([term(cons("Float"))])),prod([sort("ArrayType")],sort("Type"),attrs([term(cons("Array"))])),prod([lit("struct"),sort("ID")],sort("Type"),attrs([term(cons("Struct"))])),prod([sort("ID"),lit("="),sort("Exp"),lit(";")],sort("Statement"),attrs([term(cons("Assignment"))])),prod([sort("ID"),lit("["),sort("Exp"),lit("]"),lit("="),sort("Exp"),lit(";")],sort("Statement"),attrs([term(cons("ArrayAssignment"))])),prod([sort("ID"),lit("."),sort("ID"),lit("="),sort("Exp"),lit(";")],sort("Statement"),attrs([term(cons("StructMemberAssignment"))])),prod([lit("if"),lit("("),sort("Exp"),lit(")"),sort("Statement"),lit("else"),sort("Statement")],sort("Statement"),attrs([term(cons("IfElse"))])),prod([lit("while"),lit("("),sort("Exp"),lit(")"),sort("Statement")],sort("Statement"),attrs([term(cons("While"))])),prod([lit("printf"),lit("("),lit("\\\""),lit("%i"),lit("\\\""),lit(","),sort("Exp"),lit(")"),lit(";")],sort("Statement"),attrs([term(cons("PrintfInt"))])),prod([lit("printf"),lit("("),lit("\\\""),lit("%f"),lit("\\\""),lit(","),sort("Exp"),lit(")"),lit(";")],sort("Statement"),attrs([term(cons("PrinfFloat"))])),prod([lit("{"),iter-star(sort("Statement")),lit("}")],sort("Statement"),attrs([term(cons("CodeBlock"))])),prod([sort("INT")],sort("Exp"),attrs([term(cons("IntConst"))])),prod([sort("FLOAT")],sort("Exp"),attrs([term(cons("FloatConst"))])),prod([sort("ID")],sort("Lvalue"),attrs([term(cons("Var"))])),prod([sort("Lvalue"),lit("."),sort("Lvalue")],sort("Lvalue"),attrs([term(cons("StructMember")),assoc(left)])),prod([sort("ID"),lit("["),sort("Exp"),lit("]")],sort("Lvalue"),attrs([term(cons("ArrayVar"))])),prod([sort("Lvalue")],sort("Exp"),attrs([])),prod([sort("Exp"),lit("&&"),sort("Exp")],sort("Exp"),attrs([term(cons("And")),assoc(left)])),prod([sort("Exp"),lit("<"),sort("Exp")],sort("Exp"),attrs([term(cons("Lt")),assoc(non-assoc)])),prod([sort("Exp"),lit(">"),sort("Exp")],sort("Exp"),attrs([term(cons("Gt")),assoc(non-assoc)])),prod([sort("Exp"),lit("+"),sort("Exp")],sort("Exp"),attrs([term(cons("Add")),assoc(left)])),prod([sort("Exp"),lit("-"),sort("Exp")],sort("Exp"),attrs([term(cons("Subtract")),assoc(left)])),prod([sort("Exp"),lit("*"),sort("Exp")],sort("Exp"),attrs([term(cons("Multiply")),assoc(left)])),prod([sort("Exp"),lit("/"),sort("Exp")],sort("Exp"),attrs([term(cons("Divide")),assoc(left)])),prod([lit("!"),sort("Exp")],sort("Exp"),attrs([term(cons("Not"))])),prod([lit("("),sort("Exp"),lit(")")],sort("Exp"),attrs([bracket])),prod([lit("sizeof"),lit("("),sort("Exp"),lit(")")],sort("Exp"),attrs([term(cons("Sizeof"))])),prod([sort("ID"),lit("("),iter-star-sep(sort("Exp"),lit(",")),lit(")")],sort("Exp"),attrs([term(cons("Call"))]))]),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Program"),attrs([term(cons("COMPLETION-Program"))])),prod([sort("CONTENTCOMPLETE")],sort("TypeDec"),attrs([term(cons("COMPLETION-TypeDec"))])),prod([sort("CONTENTCOMPLETE")],sort("VarDec"),attrs([term(cons("COMPLETION-VarDec"))])),prod([sort("CONTENTCOMPLETE")],sort("FunctionDec"),attrs([term(cons("COMPLETION-FunctionDec"))])),prod([sort("CONTENTCOMPLETE")],sort("Parameter"),attrs([term(cons("COMPLETION-Parameter"))])),prod([sort("CONTENTCOMPLETE")],sort("ArrayType"),attrs([term(cons("COMPLETION-ArrayType"))])),prod([sort("CONTENTCOMPLETE")],sort("Type"),attrs([term(cons("COMPLETION-Type"))])),prod([sort("CONTENTCOMPLETE")],sort("Statement"),attrs([term(cons("COMPLETION-Statement"))])),prod([sort("CONTENTCOMPLETE")],sort("Lvalue"),attrs([term(cons("COMPLETION-Lvalue"))])),prod([sort("CONTENTCOMPLETE")],sort("Exp"),attrs([term(cons("COMPLETION-Exp"))]))])),lexical-restrictions([follow([lit("return"),lit("int"),lit("float"),lit("struct"),lit("if"),lit("else"),lit("while"),lit("%i"),lit("printf"),lit("%f"),lit("sizeof")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),range(short("A"),short("Z"))))))))])),context-free-priorities([chain([assoc-group(left,[prod([sort("Exp"),lit("*"),sort("Exp")],sort("Exp"),attrs([])),prod([sort("Exp"),lit("/"),sort("Exp")],sort("Exp"),attrs([]))]),assoc-group(left,[prod([sort("Exp"),lit("+"),sort("Exp")],sort("Exp"),attrs([])),prod([sort("Exp"),lit("-"),sort("Exp")],sort("Exp"),attrs([]))]),assoc-group(non-assoc,[prod([sort("Exp"),lit("<"),sort("Exp")],sort("Exp"),attrs([])),prod([sort("Exp"),lit(">"),sort("Exp")],sort("Exp"),attrs([]))]),assoc-group(left,[prod([sort("Exp"),lit("&&"),sort("Exp")],sort("Exp"),attrs([]))])])])))])