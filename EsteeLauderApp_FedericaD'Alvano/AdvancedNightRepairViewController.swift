//
//  AdvancedNightRepairViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/26/22.
//

import UIKit

class AdvancedNightRepairViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func homeBtn(_ sender: Any) {
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sloganLabel: UILabel!

    @IBOutlet weak var quickFactsTitle: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var imageModel: UIImageView!
    @IBOutlet weak var imageSerumLab: UIImageView!

    @IBAction func productInfoBtn(_ sender: Any) {
    }
    
    @IBAction func websiteBtn(_ sender: UIButton) {
        if let url = URL(string: "https://www.esteelauder.com/") {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
    }
}

