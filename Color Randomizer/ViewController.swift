//
//  ViewController.swift
//  Color Randomizer
//
//  Created by RICHARD SCHWAMBACH on 09/05/20.
//  Copyright © 2020 RICHARD SCHWAMBACH. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    @IBOutlet weak var background1: UIImageView!
    @IBOutlet weak var background2: UIImageView!
    @IBOutlet weak var background3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.background1.backgroundColor = UIColor.gray
        self.background2.backgroundColor = UIColor.gray
        self.background3.backgroundColor = UIColor.gray
    }
    
    
    
    @IBAction func PressMeTapped(_ sender: Any) {
        AudioServicesPlaySystemSound(kSystemSoundID_Vibrate)
        AudioServicesPlaySystemSound(SystemSoundID(1000))
        rgbColor()
    }
    
    // MARK: function to randomize colors
    func rgbColor() {
        let red = Int.random(in: 0...255)
        let green = Int.random(in: 0...255)
        let blue = Int.random(in: 0...255)
        
        background1.backgroundColor = UIColor(red: CGFloat(red)/255, green: CGFloat(green)/255, blue: CGFloat(blue)/255, alpha: 1)
    
        let red2 = Int.random(in: 0...255)
        let green2 = Int.random(in: 0...255)
        let blue2 = Int.random(in: 0...255)
        
        background2.backgroundColor = UIColor(red: CGFloat(red2)/255, green: CGFloat(green2)/255, blue: CGFloat(blue2)/255, alpha: 1)
        
        let red3 = Int.random(in: 0...255)
        let green3 = Int.random(in: 0...255)
        let blue3 = Int.random(in: 0...255)
        
        background3.backgroundColor = UIColor(red: CGFloat(red3)/255, green: CGFloat(green3)/255, blue: CGFloat(blue3)/255, alpha: 1)
    }
    
}

