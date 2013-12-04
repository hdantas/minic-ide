module type-ts

imports
  include/MiniC
  lib/runtime/task/-
  lib/runtime/types/-
  analysis/desugar


type rules //literals
  IntConst(v): Int()
  FloatConst(f): Float()
  
type rules // unary and binary expressions

UnExp(op, e1) : return-type
where op: (expected-type, return-type)
  and e1: e1-type
  and expected-type == e1-type
  else error ["Unexpected subexpression type for unary operator. Received ", e1-type, " expecting ", expected-type, "."] on e1
  
UMINUS(): (Int(), Int())
UPLUS(): (Int(), Int())
UNOT(): (Int(), Int())
USIZEOF(): (Int(), Int())

BinExp(op, e1, e2) : return-type
where op: (expected-type, return-type)
  and e1: e1-type
  and e2: e2-type
  and expected-type == e1-type
  else error ["Unexpected 1st subexpression type for unary operator. Received ", e1-type, " expecting ", expected-type, "."] on e1
  and expected-type == e2-type
  else error ["Unexpected 2nd subexpression type for unary operator. Received ", e2-type, " expecting ", expected-type, "."] on e2
  
Plus(): (Int(), Int())
Minus(): (Int(), Int())
Mul(): (Int(), Int())
And(): (Int(), Int())
Lt(): (Int(), Int())

type rules // References

Var(i): ty
where definition of i: ty

StructMember(v, Field(f)): ty
where definition of f: ty


type rules // Methods

Arg(t, p) : t
ArrayArg(t, p) : t

// Call(m, p) : return-type
// where definition of m: (return-type, expected-param-type)  // lookup sophisticated type and match parameter-types and return-type
//   and p: actual-param-type                       // check actual argument types w.r.t. parameter types
//   // and actual-param-type == expected-param-type
//   and actual-param-type <: return-type
//   else error ["Type match failed. Received arguments of type ", actual-param-type, " while expected ", expected-param-type, ", return-type: ", return-type, "."] on p


type rules // Statements

Assignment(v, e) :-
where e: type-e
	and v: type-v
	// and type-v == type-e
	and type-v <: type-e
	else error ["Assigning expression of type ", type-e, " to variable of type ", type-v, "."] on e

IfElse(e, a, b) :-
where e: type
  and type == Int()
  else error ["If statement requires an Int. Received ", type, "."] on e
  
While(e, b) :-
where e: type
  and type == Int()
  else error ["While statement requires an Int. Received ", type, "."] on e

PrintfInt(e) :-
where e: type
  and type == Int()
  else error ["%i expects an Int. Received ", type, "."] on e

PrintfFloat(e) :-
where e: type
  and type == Float()
  else error ["%f expects a Float. Received ", type, "."] on e
 
type rules // check return type

FunctionDef(t, a, b, c, r) :-
  where definition of r: ret-type
  // and t == ret-type
  and t <: ret-type
  else error ["Unexpect type for returning expression: ", ret-type, ". Expecting ", t, "."] on r
     
     
type rules // subtyping

	ty1 <: ty2
	where ty1 == ty2
	



    