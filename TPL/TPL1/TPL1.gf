    abstract TPL1 = {
  
      flags startcat = Term ;
  
      cat Term ; FnThree ; FnOne ; TermConst ; TermObj1 ; TermObj2 ; TermObj3 ;
  
      fun
        Term3 : FnThree -> Term ;
        Term1 : FnOne -> Term ;
        Term0 : TermConst -> Term;

        -- Terms of three constants
        IfThenElse : TermObj1 -> TermObj2 -> TermObj3 -> FnThree ;
        
        -- Terms of two constants
        Succ,
        Pred,
        IsZero : TermObj1 -> FnOne ;

        -- Terms of one constant
        Zero,
        True,
        False : TermConst ;

        -- Term of object language for recursion
        TermExpr1 : TermObj1;
        TermExpr2 : TermObj2;
        TermExpr3 : TermObj3;

    }
