//
//  ViewController.swift
//  TrafficLight
//
//  Created by Богдан Анищенков on 28.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nextButton.layer.cornerRadius = 20
        
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
    }
    
    @IBAction private func changeLight() {
        if nextButton.currentTitle == "START" {
            nextButton.setTitle("NEXT", for: .normal)
        }

        if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        } else {
            redLightView.alpha = 1
        }
    }
    
}

