//
//  ViewController.swift
//  99ballons
//
//  Created by José Corcuera on 7/14/15.
//  Copyright (c) 2015 Jose Corcuera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var balloonImage: UIImageView!
    
    var balloons = [Balloon?](count: 99, repeatedValue: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func nextBalloonButtonPressed(sender: UIBarButtonItem) {
        var random = Int(arc4random_uniform(UInt32(99)))
        if let balloon = balloons[random] {
            println("Balloon exists")
            balloonLabel.text = balloon.label()
            balloonImage.image = balloon.image()
        } else {
            println("Balloon doesnt exists, creating one...")
            var balloon = Balloon(number: random + 1)
            balloonLabel.text = balloon.label()
            balloonImage.image = balloon.image()
            balloons[random] = balloon
        }
    }

}