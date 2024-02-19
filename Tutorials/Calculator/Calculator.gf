abstract Calculator = {

flags startcat = Prog ;

cat 
  Program;         -- Program is the highest level of structure
  DataType;      -- DataType is the lowest level of structure
  Expr DataType;  -- Expression is subtype of DataType defined with ss
  Var DataType;  -- Variable is subtype of DataType defined with table
   

fun
  PEmpty : Program ;               -- see PEmpty concrete defn
  PPreProcessorMode : Program ;    -- see PPreProcessor concrete defn
  float, int : DataType ;           -- see float, int concrete defns
  fast, optimize : PreProcType

  EInt : Int -> Exp int;        -- 
  EFloat : Float -> Exp float;  -- 
  
  EPlus, EMinus, ETimes, EDiv : (T : DataType) -> Exp T -> (Exp T) -> Exp T ;

  Stmnt : (T : DataType) -> (Expr T) -> ((Var T) -> Program) -> Program ;
  EVar : (T : DataType) -> (Var T) -> Exp T;
  
  {-
    (parse string/AST)
    ""
      PEmpty
    "#pre"
      PProcessorMode
    "float _ = 3.14 ;"
      PInit float (EFloat 3.14) (\_1 -> PEmpty)
    "int _ = 135 ;"
      int _ = (Ent 135) (\_1 -> PEmpty)
    "float _ = 3.14 ; int _ = 135 ;"
      PInit float (EFloat 3.14) (\_1 -> PInit int (EInt 135) (\_1 -> PEmpty))          
  
  -}
}
