abstract Calculator = {
flags startcat = Prog ;
cat 
  Exp Typ;
  Prog;
  Var Typ;
  Dec;
  Typ;

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
