//
//  ViewController.swift
//  magic8Ball
//
//  Created by Sasha Fujiwara on 2021/03/08.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var answerLabel: UILabel!
    
    
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var magic8Ball: UIImageView!
    @IBOutlet weak var magic8ball: UIImageView!
    @IBOutlet weak var userQuestion: UITextField!
    var count = 0
    @IBOutlet weak var shakeTheBallLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        shakeTheBallLabel.isHidden = true
        count = 0
    
        
        
       
    }
    
  
    
    @IBAction func gesture(_ sender: UIPanGestureRecognizer) {
    
    let point = sender.location(in: view)
        imageView.center = CGPoint(x: point.x, y: point.y)
    
        if point.x > 50 || point.x < -59 || point.y > 50 || point.y < -50 {
           count += 1
            print(count)
            
        }
        if count > 100 && userQuestion.text != ""{
               performSegue(withIdentifier: "segue", sender: nil)
            count = 0
            
                
                
                
                
          ///  }
        } else if userQuestion.text == ""{
            alert(message: "You didn't ask your question")
        }
    
    }
    

    @IBAction func onButtonPress(_ sender: UIButton) {
       
        let userQuest = userQuestion.text

        
        
        
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! presentViewController
    nvc.userQuestionString = userQuestion.text
    }
    
    @IBAction func lazyButton(_ sender: UIButton) {
        if userQuestion.text != "" {
        performSegue(withIdentifier: "segue", sender: nil)
            count = 0
    
        } else if userQuestion.text == ""{
        alert(message: "You didn't ask your question")
        
        
    
    
    }
    }
    func alert(message: String) -> Int {
        let alert = UIAlertController(title: "Oh no 😬", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .default) { (alert) in
            
        
    }
        alert.addAction(alertAction)
        present(alert, animated: true, completion: nil)
        return 0

        



}
}

