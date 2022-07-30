//
//  ViewController.swift
//  TrafficLight
//
//  Created by Богдан Анищенков on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var nextButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nextButton.layer.cornerRadius = 20
        
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        redLightView.alpha = 0.5
        
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        yellowLightView.alpha = 0.5
        
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        greenLightView.alpha = 0.5
    }
    
    @IBAction func changeLight() {
        
        if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.5
            nextButton.setTitle("NEXT", for: .normal)
        } else if yellowLightView.alpha == 0.5 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.5
        } else if greenLightView.alpha == 0.5 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.5
        }
    }
}

