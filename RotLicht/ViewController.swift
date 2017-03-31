//
//  ViewController.swift
//  RotLicht
//
//  Created by Frank on 22.03.17.
//  Copyright © 2017 Fraking. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var background: UIView!
    
    
    @IBAction func backgoundSlider(_ sender: UISlider) {
        
        
        // BackgroundFarbe einstellen mit Slider
        
        let colorValue = CGFloat(sender.value)
        background.backgroundColor = UIColor (red: colorValue, green: 0/255, blue: 0, alpha: 1)
        
       
        
        // SliderKnopf soll Farbe haben
        var valueForThumb = sender.value + 0.1
        
        // SliderKnopf verändert Farbe wenn Hintergrund die gleiche Farbe ist wie der Knopf
        if sender.value == 1 {
            valueForThumb = sender.value - 0.2
        }
        
        if sender.value == 0.0 {
            valueForThumb = sender.value + 0.2
        }
        
        sender.thumbTintColor = UIColor (red: CGFloat(valueForThumb), green: 0/255, blue: 0, alpha: 1)

        
        

        
      
            }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

