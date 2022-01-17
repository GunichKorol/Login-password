//
//  RegViewController.swift
//  Lesson 6_3
//
//  Created by Kirill Gunich-Korol on 16.12.21.
//

import UIKit

class RegViewController: UIViewController {

    @IBOutlet weak var tfLogin: UITextField!
    @IBOutlet weak var tfPassword1: UITextField!
    @IBOutlet weak var tfPassword2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registr(_ sender: Any) {
        guard   let login = tfLogin.text,
                let pass1 = tfPassword1.text,
                let pass2 = tfPassword2.text
        else {return}
        
        if login.isEmpty || pass1.isEmpty || pass2.isEmpty {
            var alert = UIAlertController (title: "Error", message: "Empty field", preferredStyle: .alert)
            var button = UIAlertAction (title: "OK", style: .default, handler: nil)
            alert.addAction(button)
            present(alert,animated: true)
        }
        
        if pass1 != pass2 {
            var alert = UIAlertController (title: "Error", message: "Uncorrect password", preferredStyle: .alert)
            var button = UIAlertAction (title: "OK", style: .default, handler: nil)
            alert.addAction(button)
            present(alert,animated: true)
        }
        var userDefault = UserDefaults.standard
        userDefault.set(login, forKey: "Login")
        userDefault.set(pass1, forKey: "Password")
        
        //close
        dismiss(animated: true)
    }
    
}
