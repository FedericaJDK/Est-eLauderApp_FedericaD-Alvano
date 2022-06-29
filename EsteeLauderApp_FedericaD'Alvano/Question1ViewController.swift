//
//  Question1ViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/28/22.
//
import UIKit

class Question1ViewController: UIViewController {
    
    var score = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
   
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.titleLabel!.text == "Oily" {
            score = score + 3
        }
        else if sender.titleLabel!.text == "Combination" {
            score = score + 2
        }
        else if sender.titleLabel!.text == "dry" {
            score = score + 1
        }
    performSegue(withIdentifier: "goToNext", sender: self)
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?) {
        if segue.identifier == "goToNext" {
            let destinationVC = segue.destination as? Question2ViewController
            destinationVC?.score = score
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

