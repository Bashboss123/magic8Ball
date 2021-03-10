//
//  ViewController.swift
//  magic8Ball
//
//  Created by Sasha Fujiwara on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var userQuestion: UITextField!
    var answerArray = ["Probably not", "Very unlikely", "Most deffinetly", "Deffinetly not", "Hard to tell", "As I see it, yes.", "Ask again later.", "Don't count on it.", "It is certain.", "It is decidedly so.", " My reply is no.", "My sources say no.", "Outlook not so good.", "Outlook good.", "Reply hazy, try again.", "Signs point to yes.", " Very doubtful.", "Without a doubt.", " Yes.", " Yes – definitely.", " You may rely on it."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answerLabel.backgroundColor = UIColor(patternImage: UIImage(named: "magic")!)
       
    }
    @IBAction func gesture(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        answerLabel.center = point
    }
    
    

    @IBAction func onButtonPress(_ sender: UIButton) {
        answerLabel.text = answerArray.randomElement()
        answerLabel.adjustsFontSizeToFitWidth = true
    }
    
}

