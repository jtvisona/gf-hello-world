    -- This file takes an abstract syntax tree and builds a string from the AST categories
    concrete Hypernymy1Eng of Hypernymy1 = {
  
      lincat Hypernym, Hyponym = {s : Str} ;

      lin
        Color hyponym = {s = "color" ++ hyponym.s} ;
        Red = {s = "red" } ;
        Green = {s = "green"} ;
        Blue = {s = "blue"} ;
    }
