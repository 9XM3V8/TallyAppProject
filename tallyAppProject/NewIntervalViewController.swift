//
//  NewIntervalViewController.swift
//  tallyAppProject
//
//  Created by Dylan on 9/30/24.
//

import UIKit

class NewIntervalViewController: UIViewController {
    
    var newInterval: Int {
        guard let text = intervalTextField.text,
                let textAsInt = Int(text) else { return 1 }
        return textAsInt
    }
    
    @IBOutlet weak var intervalTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
