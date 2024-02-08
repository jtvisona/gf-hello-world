    -- This takes a string and parses the tokens to an abstract syntax tree with categories
    abstract Hypernymy2 = {
  
      flags startcat = Hypernym ;

      cat Hypernym ; flavorHyponym ; colorHyponym ;

      fun
        Flavor : flavorHyponym -> Hypernym ;
        Color : colorHyponym -> Hypernym ;
        cRed, cGreen, cBlue : colorHyponym ;
        fRed, fGreen, fBlue : flavorHyponym ;
    }
    