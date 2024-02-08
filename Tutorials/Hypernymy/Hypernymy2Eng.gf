    -- This file takes an abstract syntax tree and builds a string from the AST categories
    concrete Hypernymy2Eng of Hypernymy2 = {
  
      lincat Hypernym, colorHyponym, flavorHyponym = {s : Str} ;

      lin
        Color colorHyponym = {s = "color" ++ colorHyponym.s} ;
        Flavor flavorHyponym = {s = "flavor" ++ flavorHyponym.s} ;
        cRed = {s = "red" } ;
        cGreen = {s = "green"} ;
        cBlue = {s = "blue"} ;
        fRed = {s = "red" } ; -- Can't have more than one! Takes the first in the list
        fGreen = {s = "green"} ;
        fBlue = {s = "blue"} ;

    }
