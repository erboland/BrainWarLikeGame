//
//  ViewController.swift
//  Brainwar like game
//
//  Created by Ербол Каршыга on 7/15/16.
//  Copyright © 2016 Yerbol Karshyga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var diapasone = UInt32()
    var score = 0
    var level = 1
    var operation = String()
    
    
    
    
    @IBOutlet weak var numbersTextLabel: UILabel!
    
    @IBOutlet weak var solutionTextField: UITextField!
    var leftNumber = Int()
    var rightNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bottomColor = UIColor(red: (244/255), green: (67/255), blue: (54/255), alpha: 1)
        let thirdColor = UIColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1)
                let gradientColors : [CGColor] = [thirdColor.CGColor,  bottomColor.CGColor]
        let gradientLocations :[Float] = [0.0, 1.0]
        let gradientLayer : CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, atIndex: 1)
        solutionTextField.becomeFirstResponder()
        self.solutionTextField.keyboardType = UIKeyboardType.NumberPad
    };
    func generateRandomNumber() -> Int {
     let random = Int(arc4random_uniform(diapasone)) + 1
        return random
    }
    
    func generateOperation () -> Character {
        let operatorArray : [Character] = ["+", "-", "/", "*"]
        func generateIndexOperation () -> Int {
            let randomOperation = Int(arc4random_uniform(4))
            return randomOperation
        }
        let operation = operatorArray [generateIndexOperation()]
        print (operation)
        return operation
        
        
    }
    func generateProblem () {
        rightNumber = generateRandomNumber()
        leftNumber = generateRandomNumber()
        checkTheLevel()
}
    @IBAction func buttonPressed(sender: UIButton) {
        generateProblem()
        
    }
    func checkTheLevel(){
    if level >= 1 {
        diapasone = 10
        self.numbersTextLabel.text = "\(rightNumber) \(leftNumber) "
    } else if level >= 5 {
        diapasone = 20
        self.numbersTextLabel.text = "\(rightNumber) - \(leftNumber) "
        }
        
    }
        // We will just increase diapasone till player reaches 5 level
    // On 5 th level we will add * and on 10 th level we will add /
    // Till 20 th level we will just adjust diapsone
    // 20th level is the last and player will only collect points
    // With 20 th level when player loses he will be decreased for some points
    // During all matchmaking there will be a leaderboard
    // If there won't be any player game will advice to play single player
    
    
    
    
    
}
