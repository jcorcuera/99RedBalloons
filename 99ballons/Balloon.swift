//
//  Balloon.swift
//  99ballons
//
//  Created by José Corcuera on 7/22/15.
//  Copyright (c) 2015 Jose Corcuera. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    var number: Int
    
    func label() -> String {
        return "\(number) ballons"
    }
    
    func image() -> UIImage {
        var balloonImageNumber = Int(arc4random_uniform(UInt32(4))) + 1
        return UIImage(named: "RedBalloon\(balloonImageNumber)")!
    }
}