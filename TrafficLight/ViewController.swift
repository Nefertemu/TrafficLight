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
    }
    
    @IBAction func changeLight() {
    }
    
    private func setupLightViews() {
        redLightView.layer.cornerRadius = redLightView.layer.bounds.width / 2
        redLightView.clipsToBounds = true
        yellowLightView.layer.cornerRadius = yellowLightView.layer.bounds.width / 2
        yellowLightView.clipsToBounds = true
        greenLightView.layer.cornerRadius = greenLightView.layer.bounds.width / 2
        greenLightView.clipsToBounds = true
    }
}

