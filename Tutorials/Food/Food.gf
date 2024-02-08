    abstract Food = {
  
      -- The top level of the tree starts with Phrase, and reading the functions below shows the tree
      -- EG: Is (This Wine) (Very Warm)
      flags startcat = Phrase ;
  
      cat
        Phrase ; Item ; Kind ; Quality ;
  
      fun
        Is : Item -> Quality -> Phrase ;      -- ex. 'wine is delicious' : Phrase (the top level of the AST)
        This, That : Kind -> Item ;           -- ex. 'this wine' : Item (use of demonstratives)
        QKind : Quality -> Kind -> Kind ;     -- ex. 'expensive wine' : Kind ()
        Very : Quality -> Quality ;           -- ex. 'very warm' : Quality (use of intensifier)
        Wine, Cheese, Fish : Kind ;           -- These are terminals (common nouns)
        Fresh, Warm, Italian, Expensive, Delicious, Boring : Quality ;  -- These are terminals (adjectives)
    }
        