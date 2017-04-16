//
//  beginMatch.swift
//  roshambo
//
//  Created by Annisa Karaca on 4/15/17.
//  Copyright © 2017 Karaca. All rights reserved.
//

import UIKit

class beginMatch: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playRock() {
        let controller: matchResults
        controller = storyboard?.instantiateViewController(withIdentifier: "matchResultsScene") as! matchResults
        controller.userMove = 0
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func playPaper(){
        performSegue(withIdentifier: "playPaper", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! matchResults
        viewController.userMove = 1
    }

}

