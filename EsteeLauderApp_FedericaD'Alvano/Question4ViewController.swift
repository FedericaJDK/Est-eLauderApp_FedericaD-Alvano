//
//  Question4ViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/28/22.
//
import UIKit

class Question4ViewController: UIViewController {

    var score : Int = 0
    
    @IBOutlet weak var question4Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.titleLabel!.text == "Influencers" {
            score = score + 3
        }
        else if sender.titleLabel!.text == "Magazines" {
            score = score + 2
        }
        else if sender.titleLabel!.text == "Friends" {
            score = score + 1
        }
        performSegue(withIdentifier: "quizResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender : Any?) {
        if segue.identifier == "quizResults" {
            let destinationVC = segue.destination as? ResultsViewController
            destinationVC?.score = score
        }
    }
}
   
   

