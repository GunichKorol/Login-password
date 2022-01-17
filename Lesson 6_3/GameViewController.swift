//
//  GameViewController.swift
//  Lesson 6_3
//
//  Created by Kirill Gunich-Korol on 16.12.21.
//

import UIKit

class GameViewController: UIViewController {
var text = ""
 
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = text
        // Do any additional setup after loading the view.
    }
    

}
