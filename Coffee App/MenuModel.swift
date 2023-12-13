//
//  MenuModel.swift
//  Coffee App
//
// 
//

import Foundation

struct MenuModel{
    
    var image,title : String
    var priceBefore, priceAfter: Int //?
    //var priceFinal
    var size: String
    var sugar, count: Int
    
    init(_ i: String, _ t: String, _ s: String, _ sgr: Int, _ cp: Int)
    {
        
       
        if (s == "small")
        { priceBefore = 30 }
        else if (s == "medium")
        { priceBefore = 40 }
        else //if (s == "large")
        { priceBefore = 50 }
        
       // if sgr != nil
      //  { sugar = sgr }
       // else { sugar = 0}
        
        
        image = i
        title = t
        size = s
        sugar = sgr
        count = cp
       priceAfter = count * (priceBefore  + sugar * 2)
        
        return
    }
    
    
    
      
}






