concrete Food2Eng of Food2 = {
  
      lincat
        Phrase, Item, Kind, Quality = {s : Str} ;
  
      lin
        Is item quality = {s = item.s ++ "is" ++ quality.s} ; -- The copula is implemented as glue between item and quality.
        -- How can I force the latter linearizaiton below?
        This kind = {s = ("this" | "'dis") ++ kind.s} ; -- Demonstratives
        That kind = {s = "that" ++ kind.s} ;
        QKind quality kind = {s = quality.s ++ kind.s} ; -- This builds a subtree from a 'quality' det. and a 'kind' com. noun.
        Wine = {s = "wine"} ;
        Cheese = {s = "cheese"} ;
        Fish = {s = "fish"} ;
        Very quality = {s = "very" ++ quality.s} ;
        Fresh = {s = "fresh"} ;
        Warm = {s = "warm"} ;
        Italian = {s = "Italian"} ;
        Expensive = {s = "expensive"} ;
        Delicious = {s = ("delicious" | "delish") } ; -- NB "delish"
        Boring = {s = "boring"} ;
    }
    