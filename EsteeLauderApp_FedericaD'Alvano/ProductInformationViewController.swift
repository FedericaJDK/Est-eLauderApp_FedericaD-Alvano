//
//  ProductInformationViewController.swift
//  EsteeLauderApp_FedericaD'Alvano
//
//  Created by Federica D’Alvano on 6/29/22.
//

import UIKit

class ProductInformationViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func benefitsBtn(_ sender: Any) {
    }
    @IBAction func SerumBtn(_ sender: Any) {
    }
    @IBAction func websiteBtn(_ sender: Any) {
        if let url = URL(string: "https://www.esteelauder.com/") {
              UIApplication.shared.open(url, options: [:], completionHandler: nil)
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
