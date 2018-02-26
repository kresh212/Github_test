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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.borderWidth = 1;
        button.backgroundColor = UIColor.white
    }

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
