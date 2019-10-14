//
//  ViewController.swift
//  Dice App
//
//  Created by Vishnu on 14/10/19.
//  Copyright © 2019 DiceApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice_1","dice_2","dice_3","dice_4","dice_5","dice_6"]
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
      updateDiceImage()
    }

    @IBAction func rollBtn(_ sender: UIButton) {
       updateDiceImage()
    }
    func updateDiceImage(){
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        diceImageOne.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageTwo.image = UIImage(named: diceArray[randomDiceIndex2])
    }
}

