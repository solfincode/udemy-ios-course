//
//  ViewController.swift
//  dice app
//
//  Created by Q on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var diceImageOne: UIImageView!
    @IBOutlet weak var diceImageTwo: UIImageView!
    var leftDiceNumber = 1
    var rightDiceNumber=1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageOne.image=#imageLiteral(resourceName: "five")
        diceImageTwo.image=#imageLiteral(resourceName: "one")
    }

    @IBAction func rollButton(_ sender: UIButton) {
        let imageArray=[#imageLiteral(resourceName: "one"),#imageLiteral(resourceName: "two"),#imageLiteral(resourceName: "three"),#imageLiteral(resourceName: "four"),#imageLiteral(resourceName: "five"),#imageLiteral(resourceName: "six")]
        diceImageOne.image=imageArray[Int.random(in:0...5)]
        diceImageTwo.image=imageArray[Int.random(in:0...5)]

//        another way to solve this rolling the dice
//        let imageNameArray = ["one","two","three","four","five","six"]
//        diceImageOne.image = UIImage(named:imageNameArray[Int.random(in:0...5)])
//        diceImageTwo.image = UIImage(named:imageNameArray[Int.random(in:0...5)])
    }
    
}

