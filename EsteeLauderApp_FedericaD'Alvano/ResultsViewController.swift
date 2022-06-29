//
//  ResultsViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/28/22.
//

import UIKit

class ResultsViewController: UIViewController {
    var score : Int = 0
    
    @IBOutlet weak var resultText1: UILabel!
    @IBOutlet weak var resultImage1: UIImageView!
    @IBOutlet weak var resultInfo1: UILabel!
    
    @IBOutlet weak var resultText2: UILabel!
    @IBOutlet weak var resultInfo2: UILabel!
    @IBOutlet weak var resultImage2: UIImageView!
    
    @IBOutlet weak var resultText3: UIImageView!
    @IBOutlet weak var resultInfo3: UILabel!
    @IBOutlet weak var resultImage3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultImage3.isHidden = true
        resultText3.isHidden = true
        resultInfo3.isHidden = true
        
        resultImage2.isHidden = true
        resultInfo2.isHidden = true
        resultText2.isHidden = true
        
        resultText1.isHidden = true
        resultInfo1.isHidden = true
        resultImage1.isHidden = true
        
        if score <= 6 {
            resultText1.isHidden = false
            resultInfo1.isHidden = false
            resultImage1.isHidden = false
        }
        else if score > 6 && score < 9 {
            resultImage2.isHidden = false
            resultInfo2.isHidden = false
            resultText2.isHidden = false
        }
        else {
            resultImage3.isHidden = false
            resultText3.isHidden = false
            resultInfo3.isHidden = false
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeButton(_ sender: Any) {
    }
    
    @IBOutlet weak var imageSet1: UIImageView!
    @IBOutlet weak var imageSet2: UIImageView!
}
