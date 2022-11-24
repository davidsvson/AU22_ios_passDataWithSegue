//
//  ViewController.swift
//  PassData
//
//  Created by David Svensson on 2022-11-24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    let segueToResult = "segueToResultView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueToResult, sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToResult {
            if let destinationVC = segue.destination as? ResultViewController {
            
                destinationVC.recivingMessage = textField.text
            }
        }
    }
    
    @IBAction func unwindToStartView(segue: UIStoryboardSegue) {
    }
    
    
    
}

