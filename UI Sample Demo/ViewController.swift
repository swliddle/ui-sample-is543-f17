//
//  ViewController.swift
//  UI Sample Demo
//
//  Created by Steve Liddle on 9/27/17.
//  Copyright © 2017 Steve Liddle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print({
            (x: Int) -> String in
            return "\(x * x)"
        }(3))
    }
}

