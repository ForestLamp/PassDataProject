//
//  ThirdViewController.swift
//  PassDataProject
//
//  Created by Alex Ch. on 28.01.2022.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var labelThirdVC: UILabel!
    @IBAction func backFirstVCTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "closeThirdVC", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        labelThirdVC.text = "Нужно авторизоваться"
    }
}
