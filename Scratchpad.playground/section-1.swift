// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//random number generator
var randomNumber = Int(arc4random_uniform(10))


//uicolor
var redColor = UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0 )


let colorsArray = [redColor]

let url = NSURL(string: "http://www.stackoverflow.com")

let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
    println(NSString(data: data, encoding: NSUTF8StringEncoding))
}

task.resume()