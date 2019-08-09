//
//  ViewController.swift
//  Emojional App
//
//  Created by Apple on 8/8/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let emojis = ["🥳": "jvn", "💂🏼‍♂️": "tan", "🐶": "antoni"]
    let customMessages = ["jvn": ["Who gave you permission to be so cute?", "Can you believe?", "You can reinvent yourself and learn new things whenever you want"], "tan": ["Style is dressing the way that you feel confident!", "If someone else is concerned with you, that's on them. You're happy","You need help more than most"], "antoni": ["Learn how to treat your vegetables with the love and kindness they deserve", "Don't get stuck in a rut with your margarita", "Do you have anything from Vermont, maybe?"]]
    
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let random = Int.random(in: 0 ..< 3)
        let emojiMessage =
        customMessages[emojis[selectedEmotion!]!]?[random]
        
        
        let alertController = UIAlertController (title: selectedEmotion, message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
        

        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

