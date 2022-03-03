//
//  ViewController.swift
//  FirstProject
//
//  Created by Кунгурцев Эдуард Сергеевич on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redColorView: UIView!
    
    @IBOutlet var yellowColorView: UIView!
    
    @IBOutlet var greenColorView: UIView!
    
    @IBOutlet var colorSwitchingButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    let defaultAlphaLabel: CGFloat = 0.3
    let startAlphaLabel: CGFloat = 1

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redColorView.layer.cornerRadius = redColorView.frame.height / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.height / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.height / 2
        
    }
   
    
        
    @IBAction func colorSwitchingButtonPressed() {
        colorSwitchingButton.setTitle("NEXT", for: .normal)
        if redColorView.alpha == startAlphaLabel  {
            redColorView.alpha = defaultAlphaLabel
            yellowColorView.alpha = startAlphaLabel
        } else if yellowColorView.alpha == startAlphaLabel {
            yellowColorView.alpha = defaultAlphaLabel
            greenColorView.alpha = startAlphaLabel
        } else if greenColorView.alpha == startAlphaLabel {
            greenColorView.alpha = defaultAlphaLabel
            redColorView.alpha = startAlphaLabel
        } else {
            redColorView.alpha = startAlphaLabel
        }
    }
}

