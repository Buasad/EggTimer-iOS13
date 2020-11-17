//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    
    
    @IBOutlet weak var EggLabel: UILabel!
    @IBOutlet weak var eggProgressBar: UIProgressView!
    var player: AVAudioPlayer!
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12
    var secondsRemaining = 60
    let dict :[String : Int] = ["Soft":3,"Medium":4,"Hard":10]
    
    var timer = Timer()
    var TotalTime = Double(0)
    var secondsPassed = 0
    
@IBAction func hardnessSelected(_ sender: UIButton) {
    let hardness = sender.currentTitle!
    timer.invalidate()
    secondsRemaining = dict[hardness]!
    TotalTime = Double(dict[hardness]!)
    eggProgressBar.progress = 0.0
    secondsPassed = 0
    EggLabel.text = hardness
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
}
    
@objc func updateTimer(){
    if secondsPassed < Int(TotalTime) {
            secondsPassed += 1
            secondsRemaining -= 1
            eggProgressBar.progress = Float(secondsPassed) / Float(TotalTime)
            print(Float(secondsPassed)/Float(TotalTime))
            print(secondsRemaining)
        
            EggLabel.text = secondsRemaining.description
        
        }
    else  {
            timer.invalidate()
            EggLabel.text = "Your Egg is Done!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
        }
            
    
        }
    }

