//
//  matchResults.swift
//  roshambo
//
//  Created by Annisa Karaca on 4/15/17.
//  Copyright © 2017 Karaca. All rights reserved.
//

import UIKit

class matchResults: UIViewController {
    
    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var resultsMessage: UILabel!
    
    var computerMove: Int = 0
    var userMove: Int = 0

    // Randomly select a value of 1-3 to decide the computer's roll.
    // 0 = rock, 1 = paper, 2 = scissors
    func chooseComputerMove() -> Int {
        computerMove = Int(arc4random_uniform(3))
        return (computerMove)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let computerPlay = chooseComputerMove()
        print (computerPlay)
        print (userMove)
        if userMove == 0 {
            if computerPlay == 0 {
                resultsImage.image = #imageLiteral(resourceName: "itsATie")
                resultsMessage.text = "It's a tie!"
            } else if computerPlay == 1 {
                resultsImage.image = #imageLiteral(resourceName: "PaperCoversRock")
                resultsMessage.text = "You lose :("
            } else if computerPlay == 2 {
                resultsImage.image = #imageLiteral(resourceName: "RockCrushesScissors")
                resultsMessage.text = "You win! :D"
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 



}
