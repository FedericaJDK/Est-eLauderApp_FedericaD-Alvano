//
//  Question3ViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/28/22.
//

import UIKit

class Question3ViewController: UIViewController {
    
    var score : Int = 0
    
    @IBOutlet weak var question3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func button3Pressed(_ sender: UIButton) {
        
        if sender.titleLabel!.text == "No more than 10 minutes" {
            score = score + 1
        }
        else if sender.titleLabel!.text == "Between 15 - 20 minutes" {
            score = score + 2
        }
        else if sender.titleLabel!.text == "Oh, I need at least 45 minutes" {
            score = score + 3
        }
        performSegue(withIdentifier: "q3ToQ4", sender: self)
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "q3ToQ4" {
            let destinationVC = segue.destination as? Question4ViewController
            destinationVC?.score = score
        }
    }

    
}

