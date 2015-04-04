//
//  MasterDataObject.swift
//  FunFacts
//
//  Created by Sean Kelley on 4/3/15.
//  Copyright (c) 2015 SeanKelley. All rights reserved.
//

import Foundation
import UIKit

struct MasterDataObject{
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    func randomColor() -> UIColor{
        return colorWheel.randomColor()
    }
    func randomFact() -> String {
        return factBook.randomFact()
    }
}