//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Funakoshi Silva on 10/25/17.
//  Copyright © 2017 Funakoshi Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var magicBall: UIImageView!
    
    var randomImage : Int = 0
    
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageRandomizer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func askMePressd(_ sender: UIButton) {
        
        
        imageRandomizer()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            
              imageRandomizer()
            
        }
        
    }
    
    func imageRandomizer() {
        
        randomImage = Int (arc4random_uniform(5))
        magicBall.image = UIImage (named: imageArray[randomImage])
        print(randomImage)
        
    }
}

