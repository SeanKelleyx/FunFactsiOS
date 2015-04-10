//
//  FactBook.swift
//  FunFacts
//
//  Created by Sean Kelley on 3/22/15.
//  Copyright (c) 2015 SeanKelley. All rights reserved.
//

import Foundation

class FactBook {
    var fact : String = ""
    
    init(){
        updateFact()
    }
    
    func randomFact() -> String{
        var returnFact : String
        if fact == "" {
            returnFact = "0 is the number of facts we can get you without a network connection!"
        }else{
            returnFact = fact
        }
        updateFact()
        return returnFact
    }
    
    func updateFact(){
        let url = NSURL(string: "http://numbersapi.com/random/trivia")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            if error == nil {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.fact = NSString(data: data, encoding: NSUTF8StringEncoding)!
                })
            }else{
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.fact = ""
                })
            }
        }
        task.resume()
    }
}