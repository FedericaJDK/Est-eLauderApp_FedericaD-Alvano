//
//  Question2ViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/28/22.
//

import UIKit

class Question2ViewController: UIViewController {
    
    var score : Int = 0
    
    @IBOutlet weak var question2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func button2Pressed(_ sender: UIButton) {
        
        if sender.titleLabel!.text == "Humid" {
            score = score + 2
        }
        else if sender.titleLabel!.text == "Dry and Hot" {
            score = score + 1
        }
        else if sender.titleLabel!.text == "Cold and Rainy" {
            score = score + 3
        }
        performSegue(withIdentifier: "q2ToQ3", sender: self)
    }
    
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "q2ToQ3" {
            let destinationVC = segue.destination as? Question3ViewController
            destinationVC?.score = score
        }
    }

    
}
