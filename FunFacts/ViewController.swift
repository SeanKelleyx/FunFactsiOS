//
//  ViewController.swift
//  FunFacts
//
//  Created by Sean Kelley on 3/16/15.
//  Copyright (c) 2015 SeanKelley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        factBook.updateFact()
        /*let url = NSURL(string: "http://numbersapi.com/random/trivia")
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.funFactLabel.text =  NSString(data: data, encoding: NSUTF8StringEncoding)!
            })
        }
        task.resume()*/
        //funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showFunFact() {        
        funFactLabel.text = factBook.randomFact()
        var newThemeColor = colorWheel.randomColor()
        view.backgroundColor = newThemeColor
        funFactButton.tintColor = newThemeColor
    }
}

