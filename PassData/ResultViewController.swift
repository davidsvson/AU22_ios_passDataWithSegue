//
//  ResultViewController.swift
//  PassData
//
//  Created by David Svensson on 2022-11-24.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var displayMessageView: UILabel!
    
    var recivingMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        displayMessageView.text = "Hej  \(recivingMessage ?? "")"

    
    }
    

}
