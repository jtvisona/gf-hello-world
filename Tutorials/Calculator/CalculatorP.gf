concrete CalculatorP of Calculator = open Prelude in {

lincat 
  Program = SS ;
  Expr = SS ;
  Var = {
    s : Str ;
    t : Str ;
  } ;
  DataType = Str ;
  PreProcType = Str ;

lin
  -- Primitive data types
  int   = "int" ;          -- single token literal terminal
  float = "float" ;        -- single token literal terminal
  -- Primitive preprocessor directives
  fast = "fast" ;
  optimize = "optimize" ;

  EInt i = i ;            -- 1-arity literal terminal
    -- "int 214"
  EFloat i = i ;          -- 1-arity literal terminal
    -- "float 3.14"
  EVar _ v = v;

  EPlus  _ = infix "+" ;  -- see oper below
  EMinus _ = infix "-" ;
  ETimes _ = infix "*" ;
  EDiv   _ = infix "/" ;
  

  -- Three types of programs
  PEmpty = { s = "" } ;                 -- see abstract defn PEmpty
  PPreProcessorMode = { s = "#pre" ++ fast } ;  -- see abstract defn PPreProcessor
  Stmnt Ttyp exp D = { s = Ttyp ++ D.$0 ++ "=" ++ exp.s ++ ";" ++ D.s } ;
    -- PInit float (EFloat 3.14), "float _ = 3.14 ;"
oper
  infix : Str -> SS -> SS -> SS = \op,arg1,arg2 -> 
    ss ("(" ++ arg1.s ++ op ++ arg2.s ++ ")") ;

}
