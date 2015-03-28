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
        funFactLabel.text = factBook.randomFact()
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

