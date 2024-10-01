//
//  ViewController.swift
//  tallyAppProject
//
//  Created by Dylan on 9/30/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var intervalButton: UIButton!
    
    private var interval = 1
    
    private var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        intervalButton.setTitle("+\(interval)", for: .normal)
        intervalButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        intervalButton.titleLabel?.adjustsFontSizeToFitWidth = false
    }
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        count += interval
        countLabel.text = "\(count)"
    }
    
    @IBAction func unwindToTallyViewController(segue: UIStoryboardSegue) {
        guard let secondVC = segue.source as? NewIntervalViewController else { return }
        interval = secondVC.newInterval
        countLabel.text = "0"
        intervalButton.setTitle("+\(secondVC.newInterval)", for: .normal)
        intervalButton.titleLabel?.font = UIFont.systemFont(ofSize: 32)
        intervalButton.titleLabel?.adjustsFontSizeToFitWidth = false
    }

}

