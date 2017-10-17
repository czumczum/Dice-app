//
//  ViewController.swift
//  Dice app
//
//  Created by Ula Kuczynska on 10/3/17.
//  Copyright © 2017 Ula Kuczynska. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    func diceRandom() -> Int {
        let randomDiceFace : Int = Int(arc4random_uniform(6)) + 1
        print(randomDiceFace)
        return randomDiceFace
    }

    func rollDices(){
        diceImageView1.image = UIImage(named: "dice\(diceRandom())")
        diceImageView2.image = UIImage(named: "dice\(diceRandom())")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    @IBAction func RollButtonPressed(_ sender: UIButton) {
        rollDices()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDices()
    }
    
}

