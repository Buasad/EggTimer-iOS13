//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let softTime = 5
    let mediumTime = 7
    let hardTime = 12

@IBAction func hardnessSelected(_ sender: UIButton) {
    let dict :[String : Int] = ["Soft":5,
                                "Medium":7,
                                "Hard":12]
    let eggs = [dict["Soft"],dict["Medium"],dict["Hard"]]
    let hardness = sender.currentTitle!
    print(hardness)
    switch hardness {
case "Soft": print(eggs[0]!)
    case "Medium": print(eggs[1]!)
    
    case "Hard" :
    print(eggs[2]!)
    
    default:
        print("Error")
    }
}
}
