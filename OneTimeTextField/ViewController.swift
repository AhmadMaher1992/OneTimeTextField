//
//  ViewController.swift
//  OneTimeTextField
//
//  Created by Ahmad Eisa on 3/14/20.
//  Copyright © 2020 Ahmad Eisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var codeTextField: OneTimeCodeTextField!
    
 let alert = AlertService.shared
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //codeTextField.defaultCharacter = "#"
        codeTextField.configure()
        codeTextField.didEnterLastDigit = { [weak self] code in
            print(code)
            guard let alert = self?.alert.successMessage(with: code  ) else { return }
            self?.present(alert ,animated:  true)
        }
        
    }


}

