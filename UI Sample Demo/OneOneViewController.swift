//
//  OneOneViewController.swift
//  UI Sample Demo
//
//  Created by Steve Liddle on 10/2/17.
//  Copyright © 2017 Steve Liddle. All rights reserved.
//

import UIKit

class OneOneViewController : UIViewController {
    
    var displayText = "Set me, please"
    
    @IBOutlet weak var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainLabel.text = displayText
    }
}
