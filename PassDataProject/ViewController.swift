//
//  ViewController.swift
//  PassDataProject
//
//  Created by Alex Ch. on 27.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBAction func loginTapped(_ sender: UIButton) {
        if loginTF.text != "" {
        performSegue(withIdentifier: "loginEntered", sender: nil)
        }
        else {
            performSegue(withIdentifier: "loginEmpty", sender: nil)
        }
    }
    override func viewDidLoad() {
        resultLabel.isHidden = true
    }
    
    // Кастим до основного VC
    @IBAction func unwindSegueToVC (segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
        resultLabel.isHidden = false
    }
    // Кастим до второго VC
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? SecondViewController else {return}
        vc.login = loginTF.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

