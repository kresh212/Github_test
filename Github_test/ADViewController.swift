//
//  ADViewController.swift
//  Github_test
//
//  Created by Александр Дудырев on 26.02.2018.
//  Copyright © 2018 Александр Дудырев. All rights reserved.
//

import UIKit

class ADViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var cleanButton: UIButton!
    @IBOutlet weak var changeButtonColor: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 1;
        button.backgroundColor = UIColor.white
        
        cleanButton.layer.cornerRadius = 5
        cleanButton.layer.borderColor = UIColor.blue.cgColor
        cleanButton.layer.borderWidth = 1;
        cleanButton.backgroundColor = UIColor.white
    }

    // MARK: Change button color
    @IBAction func changeButtonColor(_ sender: UIButton) {
        button.backgroundColor = randomColor()
        cleanButton.backgroundColor = randomColor()
    }
    
    // MARK: Clean Button
    @IBAction func cleanButtonPressed(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.white
    }
    
    // MARK: Button
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        self.view.backgroundColor = randomColor()
        
    }
    
    func randomColor() -> UIColor {
        
        func randomFloat() -> CGFloat {
            return CGFloat(arc4random_uniform(254)) / 255
        }
        
        let red = randomFloat()
        let green = randomFloat()
        let blue = randomFloat()
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
}
