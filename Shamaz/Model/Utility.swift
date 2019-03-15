//
//  Utility.swift
//  Shamaz
//
//  Created by Ashutosh Purushottam on 15/03/19.
//  Copyright © 2019 Ashutosh Purushottam. All rights reserved.
//

import Foundation

class Utility {
    
    static func generateQuote(isPast: Bool) -> String {
        var quote = ""

        if isPast {
            quote = getRandomQuote(arr: Quotes.pastQuotes)
        } else {
            quote = getRandomQuote(arr: Quotes.futureQuotes)
        }
        
        quote += " \(getRandomQuote(arr: Quotes.times))"
        
        return quote
    }
    
    static func getRandomQuote(arr: [String]) -> String {
        return arr.randomElement() ?? ""
    }
}
