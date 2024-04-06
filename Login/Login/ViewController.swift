//
//  ViewController.swift
//  Login
//
//  Created by student on 04/03/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func forgotUsernamePressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: sender)
    }
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUserNameOrPassword", sender: sender)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else{
            return
        }
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserNameButton{
            segue.destination.navigationItem.title = "Forgot UserName"
        }
        else {
             segue.destination.navigationItem.title = userNameTextField.text
        }
        
    }


}

