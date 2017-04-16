//
//  ViewController.swift
//  Color Maker Slider
//
//  Created by Annisa Karaca on 4/15/17.
//  Copyright © 2017 Karaca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    @IBAction func sliderChanged(sender: UISlider) {
        var red_color: CGFloat = CGFloat(redSlider.value)
        var blue_color: CGFloat = CGFloat(blueSlider.value)
        var green_color: CGFloat = CGFloat(greenSlider.value)
        colorView.backgroundColor = UIColor(red: red_color, green: green_color, blue: blue_color, alpha: 1)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

