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
        let returnFact = fact
        updateFact()
        return returnFact
    }
    
    func updateFact(){
        let url = NSURL(string: "http://numbersapi.com/random/trivia")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.fact = NSString(data: data, encoding: NSUTF8StringEncoding)!
            })
        }
        task.resume()
    }
}