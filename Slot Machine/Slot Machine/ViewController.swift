//
//  ViewController.swift
//  Slot Machine
//
//  Created by Student User on 3/28/19.
//  Copyright © 2019 Student User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageLeft: UIImageView!
    @IBOutlet weak var imageCenter: UIImageView!
    @IBOutlet weak var imageRight: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    
    var score: Int = 0
    var images = [#imageLiteral(resourceName: "Fruit"),#imageLiteral(resourceName: "worldGovernment"), #imageLiteral(resourceName: "strawhatLogo")]
    var myTimer: Timer! //creates a timer ovbject
    var timerCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerLabel.text = "Timer: \(timerCount)"
        startTimer()
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .landscapeLeft
    }
    
    override var shouldAutorotate: Bool{
        return true
    }
    
    @IBAction func spinSlot(_ sender: UIButton) {
            sender.isEnabled = false
            let newrandom1 = Int.random(in: 0 ..< images.count)
            let newrandom2 = Int.random(in: 0 ..< images.count)
            let newrandom3 = Int.random(in: 0 ..< images.count)
        
            imageLeft.image = images[newrandom1]
            imageCenter.image = images[newrandom2]
            imageRight.image = images[newrandom3]
            updateScore()
            sender.isEnabled =  true
    }
    
    func updateScore(){
        if imageLeft.image == imageRight.image && imageLeft.image == imageCenter.image{
            score += 100
            scoreLabel.text = "Score: \(score)"
        }
        else if imageLeft.image == imageRight.image || imageLeft.image == imageCenter.image{
            score += 50
            scoreLabel.text = "Score: \(score)"
        }
        else{
            score -= 50
            scoreLabel.text = "Score: \(score)"
        }
    }
    
    func startTimer(){
        timerCount = 0
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: mySelector, userInfo: nil, repeats: true)
    }
    
    let mySelector = #selector(animateOnTimer)
    
    @objc func animateOnTimer(){
        timerCount += 1
        timerLabel.text = "Timer: \(timerCount)"
        if timerCount >= 10{
            myTimer.invalidate()
        }
    }
    
}

