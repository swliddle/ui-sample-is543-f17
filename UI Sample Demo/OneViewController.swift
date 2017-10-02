//
//  OneViewController.swift
//  UI Sample Demo
//
//  Created by Steve Liddle on 10/2/17.
//  Copyright © 2017 Steve Liddle. All rights reserved.
//

import UIKit

class OneViewController : UIViewController {
    
    private struct Storyboard {
        static let SegueId = "showOneOne"
    }
    
    private var displayText = "Default text"

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var inputTextView: UITextView!
    @IBOutlet weak var moveOnButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()  // NEEDSWORK: this disables always, need a UITextFieldDelegate
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let oneOneVC = segue.destination as? OneOneViewController {
            oneOneVC.displayText = displayText
        }
    }

    @IBAction func moveWithSingleLine(_ sender: UIButton) {
        if let userText = inputField.text {
            if userText.count > 0 {
                displayText = userText
                performSegue(withIdentifier: Storyboard.SegueId, sender: sender)
            }
        }
    }
    
    @IBAction func moveWithMultiLine(_ sender: UIButton) {
        displayText = inputTextView.text
        performSegue(withIdentifier: Storyboard.SegueId, sender: sender)
    }
    
    private func updateUI() {
        if let userText = inputField.text {
            moveOnButton.isEnabled = userText.count > 0
        }
    }
}
