    -- This takes a string and parses the tokens to an abstract syntax tree with categories
    abstract Hypernymy1 = {
  
      flags startcat = Hypernym ;

      cat Hypernym ; Hyponym ;
  
      fun
        Color : Hyponym -> Hypernym ;
        Red, Green, Blue : Hyponym ;
    }
    