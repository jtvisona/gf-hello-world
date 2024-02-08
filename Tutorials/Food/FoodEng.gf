concrete FoodEng of Food = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        -- PHRASE
        -- The copula is implemented as glue between item and quality.
        Is item quality = {s = item.s ++ "is" ++ quality.s} ;
        
        -- ITEM
        This kind = {s = ("this" | "'dis") ++ kind.s} ; -- Demonstratives
        That kind = {s = "that" ++ kind.s} ;

        -- KIND  
        -- This builds a subtree from a 'quality' det. and a 'kind' com. noun.
        QKind quality kind = {s = quality.s ++ kind.s} ; -- adjective + common noun
        Wine = {s = "wine"} ; -- common nouns
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;

        -- QUALITY
        Very quality = {s = "very" ++ quality.s} ; -- adjectival intensifier
        Fresh = {s = "fresh"} ; -- adjectives
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = "delicious"} ;
        Boring = {s = "boring"} ;
    }
    