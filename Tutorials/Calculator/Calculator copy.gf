abstract Calculator = {

flags startcat = Prog ;

cat 
  Prog;     -- Program
  Exp Typ;  -- Expression
  Var Typ;  -- Variable
  Dec;      -- Decimal
  Typ;      -- Type

fun

  float, int : Typ;

  EPlus, EMinus, ETimes, EDiv : (T:Typ) -> (Exp T) -> (Exp T) -> Exp T ;
  EInt : Int -> Exp int;
  EFloat : Float -> Exp float;

  PEmpty: Prog; 
  PInit : (T:Typ) -> (Exp T) -> ((Var T) -> Prog) -> Prog; 
  --Blah : Thing -> Prog;
  --PInitComma :Exp -> (Var -> Var -> Prog) -> Prog; 
  EVar : (T:Typ) -> (Var T) -> Exp T;
  --PAss :Var -> Exp -> Prog -> Prog;

}
