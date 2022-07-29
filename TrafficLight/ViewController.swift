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
        
        setupLightViews()
        
        nextButton.layer.cornerRadius = 20
    }
    
    @IBAction func changeLight() {
        nextButton.setTitle("NEXT", for: .normal)
        
        let redLightAlpha = redLightView.layer.backgroundColor?.alpha
        let yellowLightAlpha = yellowLightView.layer.backgroundColor?.alpha
        let greenLightAlpha = greenLightView.layer.backgroundColor?.alpha

        if redLightAlpha == 0.3 && yellowLightAlpha == 0.3{
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
        } else if redLightAlpha == 1 {
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(1)
        } else if yellowLightAlpha == 1 {
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(1)
        } else if greenLightAlpha == 1 {
            greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
            yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
            redLightView.backgroundColor = UIColor.red.withAlphaComponent(1)
        }
    }
    
    private func setupLightViews() {
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        redLightView.clipsToBounds = true
        redLightView.backgroundColor = UIColor.red.withAlphaComponent(0.3)
        
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        yellowLightView.clipsToBounds = true
        yellowLightView.backgroundColor = UIColor.yellow.withAlphaComponent(0.3)
        
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        greenLightView.clipsToBounds = true
        greenLightView.backgroundColor = UIColor.green.withAlphaComponent(0.3)
    }
    
}

