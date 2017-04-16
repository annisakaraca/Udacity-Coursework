//
//  ViewController.swift
//  viewControllerPicker
//
//  Created by Annisa Karaca on 4/15/17.
//  Copyright © 2017 Karaca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func experiment(){
        let controller = UIImagePickerController()
        self.present(controller, animated: true, completion: nil)
    }


}

