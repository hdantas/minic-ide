module(unparameterized("MiniC-ContextFree"),[imports([module(unparameterized("MiniC-Lexical"))])],[exports(conc-grammars(conc-grammars(conc-grammars(context-free-syntax([prod([iter-star(sort("TypeDec")),iter-star(sort("VarDec")),iter-star(sort("FunctionDec")),sort("Exp")],sort("Program"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"File\""))])))])),prod([lit("\"struct\""),sort("ID"),lit("\"{\""),iter-star(sort("VarDec")),lit("\"}\""),lit("\";\"")],sort("TypeDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"StructDec\""))])))])),prod([sort("Type"),sort("ID"),lit("\";\"")],sort("VarDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"VarDec\""))])))])),prod([sort("ArrayType"),sort("ID"),lit("\"[\""),sort("INT"),lit("\"]\""),lit("\";\"")],sort("VarDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"ArrayDec\""))])))])),prod([sort("Type"),sort("ID"),lit("\"(\""),iter-star-sep(sort("Parameter"),lit("\",\"")),lit("\")\""),lit("\"{\""),iter-star(sort("VarDec")),iter-star(sort("Statement")),lit("\"return\""),sort("Exp"),lit("\";\""),lit("\"}\"")],sort("FunctionDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"FunctionDef\""))])))])),prod([sort("Type"),sort("ID")],sort("Parameter"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Arg\""))])))])),prod([sort("ArrayType"),sort("ID"),lit("\"[\""),lit("\"]\"")],sort("Parameter"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"ArrayArg\""))])))])),prod([lit("\"int\"")],sort("ArrayType"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Int\""))])))])),prod([lit("\"float\"")],sort("ArrayType"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Float\""))])))])),prod([sort("ArrayType")],sort("Type"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Array\""))])))])),prod([lit("\"struct\""),sort("ID")],sort("Type"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Struct\""))])))])),prod([sort("ID"),lit("\"=\""),sort("Exp"),lit("\";\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Assignment\""))])))])),prod([sort("ID"),lit("\"[\""),sort("Exp"),lit("\"]\""),lit("\"=\""),sort("Exp"),lit("\";\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"ArrayAssignment\""))])))])),prod([sort("ID"),lit("\".\""),sort("ID"),lit("\"=\""),sort("Exp"),lit("\";\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"StructMemberAssignment\""))])))])),prod([lit("\"if\""),lit("\"(\""),sort("Exp"),lit("\")\""),sort("Statement"),lit("\"else\""),sort("Statement")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"IfElse\""))])))])),prod([lit("\"while\""),lit("\"(\""),sort("Exp"),lit("\")\""),sort("Statement")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"While\""))])))])),prod([lit("\"printf\""),lit("\"(\""),lit("\"\\\"%i\\\"\""),lit("\",\""),sort("Exp"),lit("\")\""),lit("\";\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"PrintfInt\""))])))])),prod([lit("\"printf\""),lit("\"(\""),lit("\"\\\"%f\\\"\""),lit("\",\""),sort("Exp"),lit("\")\""),lit("\";\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"PrinfFloat\""))])))])),prod([lit("\"{\""),iter-star(sort("Statement")),lit("\"}\"")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"CodeBlock\""))])))])),prod([sort("INT")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"IntConst\""))])))])),prod([sort("FLOAT")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"FloatConst\""))])))])),prod([sort("ID")],sort("Lvalue"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Var\""))])))])),prod([sort("Lvalue"),lit("\".\""),sort("Lvalue")],sort("Lvalue"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"StructMember\""))]))),assoc(left)])),prod([sort("ID"),lit("\"[\""),sort("Exp"),lit("\"]\"")],sort("Lvalue"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"ArrayVar\""))])))])),prod([sort("Lvalue")],sort("Exp"),no-attrs),prod([sort("Exp"),lit("\"&&\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"And\""))]))),assoc(left)])),prod([sort("Exp"),lit("\"<\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Lt\""))]))),assoc(non-assoc)])),prod([sort("Exp"),lit("\">\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Gt\""))]))),assoc(non-assoc)])),prod([sort("Exp"),lit("\"+\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Add\""))]))),assoc(left)])),prod([sort("Exp"),lit("\"-\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Subtract\""))]))),assoc(left)])),prod([sort("Exp"),lit("\"*\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Multiply\""))]))),assoc(left)])),prod([sort("Exp"),lit("\"/\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Divide\""))]))),assoc(left)])),prod([lit("\"!\""),sort("Exp")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Not\""))])))])),prod([lit("\"(\""),sort("Exp"),lit("\")\"")],sort("Exp"),attrs([bracket])),prod([lit("\"sizeof\""),lit("\"(\""),sort("Exp"),lit("\")\"")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Sizeof\""))])))])),prod([sort("ID"),lit("\"(\""),iter-star-sep(sort("Exp"),lit("\",\"")),lit("\")\"")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"Call\""))])))]))]),context-free-syntax([prod([sort("CONTENTCOMPLETE")],sort("Program"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Program\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("TypeDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-TypeDec\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("VarDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-VarDec\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("FunctionDec"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-FunctionDec\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("Parameter"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Parameter\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("ArrayType"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-ArrayType\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("Type"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Type\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("Statement"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Statement\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("Lvalue"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Lvalue\""))])))])),prod([sort("CONTENTCOMPLETE")],sort("Exp"),attrs([term(default(appl(unquoted("cons"),[fun(quoted("\"COMPLETION-Exp\""))])))]))])),lexical-restrictions([follow([lit("\"return\""),lit("\"int\""),lit("\"float\""),lit("\"struct\""),lit("\"if\""),lit("\"else\""),lit("\"while\""),lit("\"printf\""),lit("\"sizeof\"")],single(char-class(simple-charclass(present(conc(range(short("a"),short("z")),range(short("A"),short("Z"))))))))])),context-free-priorities([chain([assoc-group(left,[prod([sort("Exp"),lit("\"*\""),sort("Exp")],sort("Exp"),no-attrs),prod([sort("Exp"),lit("\"/\""),sort("Exp")],sort("Exp"),no-attrs)]),assoc-group(left,[prod([sort("Exp"),lit("\"+\""),sort("Exp")],sort("Exp"),no-attrs),prod([sort("Exp"),lit("\"-\""),sort("Exp")],sort("Exp"),no-attrs)]),assoc-group(non-assoc,[prod([sort("Exp"),lit("\"<\""),sort("Exp")],sort("Exp"),no-attrs),prod([sort("Exp"),lit("\">\""),sort("Exp")],sort("Exp"),no-attrs)]),assoc-group(left,[prod([sort("Exp"),lit("\"&&\""),sort("Exp")],sort("Exp"),no-attrs)])])])))])