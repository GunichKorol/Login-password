//
//  ViewController.swift
//  Lesson 6_3
//
//  Created by Kirill Gunich-Korol on 16.12.21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var tfLogin: UITextField!
    @IBOutlet weak var tfPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click(_ sender: Any) {
        guard let login = tfLogin.text,
              let pass = tfPass.text
        else {return}
        var userDefault = UserDefaults.standard
        var userLogin = userDefault.string(forKey: "Login")
        var userPass = userDefault.string(forKey: "Password")
        
        if login == userLogin && pass == userPass {
            let storyboard = UIStoryboard (name: "Main", bundle: nil)
            let vc  = storyboard.instantiateViewController(withIdentifier: "Game") as! GameViewController
            vc.text = login
            vc.modalPresentationStyle = .fullScreen
            present (vc,animated: true)
        }
        else {
            var alert = UIAlertController (title: "Error", message: "Uncorrect varification", preferredStyle: .alert)
            var button = UIAlertAction (title: "OK", style: .default, handler: nil)
            alert.addAction(button)
            present(alert,animated: true)
        }
    }
    
}

