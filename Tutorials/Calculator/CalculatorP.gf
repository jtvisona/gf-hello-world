concrete CalculatorP of Calculator = open Prelude in {

lincat 
  Exp = SS ;
  Prog= SS ; 
  Var = {
    s : Str;
    t : Str;
  } ;
  Dec = SS ;
  Typ = Str;

lin
  float = "float";
  int   = "int";
  EPlus  _ = infix "+" ;
  EMinus _ = infix "-" ;
  ETimes _ = infix "*" ;
  EDiv   _ = infix "/" ;
  EInt i = i ;
  EFloat i = i ;
  EVar _ v = v;

  --Blah x = x;
  --SVar s = s;

  PEmpty = { s = "" };
  PInit Ttyp exp D = { s = Ttyp ++ D.$0 ++ "=" ++ exp.s ++ ";" ++ D.s };
  --PAss var exp prog = { s = var.s ++ "=" ++ exp.s ++ ";" ++ prog.s };

oper
  infix : Str -> SS -> SS -> SS = \f,x,y -> 
    ss ("(" ++ x.s ++ f ++ y.s ++ ")") ;
}
