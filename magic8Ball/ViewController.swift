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
    var count = 0
    @IBOutlet weak var shakeTheBallLabel: UILabel!
    var answerArray = ["Probably not", "Very unlikely", "Most deffinetly", "Deffinetly not", "Hard to tell", "As I see it, yes.", "Ask again later.", "Don't count on it.", "It is certain.", "It is decidedly so.", " My reply is no.", "My sources say no.", "Outlook not so good.", "Outlook good.", "Reply hazy, try again.", "Signs point to yes.", " Very doubtful.", "Without a doubt.", " Yes.", " Yes – definitely.", " You may rely on it."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shakeTheBallLabel.isHidden = true
       
    }
    @IBAction func gesture(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        answerLabel.center = CGPoint(x: point.x, y: point.y)
        if point.x > 50 || point.x < -59 || point.y > 50 || point.y < -50 {
            count += 1
            
        }
            if count > 10 {
                performSegue(withIdentifier: "segue", sender: nil)
                
                
                
                
            }
        
    
    
    }

    @IBAction func onButtonPress(_ sender: UIButton) {
        shakeTheBallLabel.isHidden = false
        let userQuest = userQuestion.text
        
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! presentViewController
    }
    
    @IBAction func lazyButton(_ sender: UIButton) {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    


}
