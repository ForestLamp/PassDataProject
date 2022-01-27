//
//  ViewController.swift
//  PassDataProject
//
//  Created by Alex Ch. on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBAction func loginTapped(_ sender: UIButton) {
        if loginTF.text != "" {
        performSegue(withIdentifier: "loginEntered", sender: nil)
        }
        else {
            return
        }
        
    }
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func unwindSegueToVC (segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SecondViewController else {return}
        vc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

