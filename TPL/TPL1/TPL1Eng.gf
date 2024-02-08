    concrete TPL1Eng of TPL1 = {
  
      lincat
        Term = {s : Str} ;
        TermObj1 = {s : Str} ;
        TermObj2 = {s : Str} ;
        TermObj3 = {s : Str} ;
        TermConst = {s : Str} ;
        FnOne = {s : Str} ;
        FnThree = {s : Str} ;
  
      lin
        -- Term3 : FnThree -> Term ;
        Term3 fnthree = {s = fnthree.s} ;
        -- Term1 : FnOne -> Term ;
        Term1 fnone = {s = fnone.s} ;
        --Term0 : TermConst -> Term;
        Term0 termobj1 = {s = termobj1.s} ;

        -- <FnThree> : TermConst -> TermConst -> TermConst -> FnThree ;
        IfThenElse termexpr1 termexpr2 termexpr3 = {s = "if" ++ termexpr1.s ++ "then" ++ termexpr2.s ++ "else" ++ termexpr3.s} ;

        -- FnOne - not linearized
        -- <FnOne> : TermConst -> FnOne ;
        Succ termexpr1 = {s = "succ" ++ termexpr1.s} ;
        Pred termexpr1 = {s = "pred" ++ termexpr1.s} ;
        IsZero termexpr1 = {s = "iszero" ++ termexpr1.s} ;
        
        -- Term - Not linearized
        -- <TermConst> : TermConst
        Zero = {s = "0"} ;
        True = {s = "true"} ;
        False = {s = "false"} ;

        -- Term of object language for recursion
        -- <TermExpr> : TermObj;
        TermExpr1 = {s = "T1"} ;
        TermExpr2 = {s = "T2"} ;
        TermExpr3 = {s = "T3"} ;
    }
