    concrete MoreFood3Eng of MoreFood3 = Food3Eng ** {
      lincat
        Question = {s : Str} ;
      lin
        QIs item quality = {s = "is" ++ item.s ++ quality.s} ;
        Pizza = {s = "pizza"} ;
    }