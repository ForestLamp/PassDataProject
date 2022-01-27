//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Alex Ch. on 27.01.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?
    
    
    @IBOutlet weak var label: UILabel!

    @IBAction func backTapped(_ sender: UIButton) {
    performSegue(withIdentifier: "goBack", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        label.text = "Привет \(login)"

    }
}

