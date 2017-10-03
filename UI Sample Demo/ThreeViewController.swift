//
//  ThreeViewController.swift
//  UI Sample Demo
//
//  Created by Steve Liddle on 10/3/17.
//  Copyright © 2017 Steve Liddle. All rights reserved.
//

import UIKit

class ThreeViewController : UIViewController {
    
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.minimumValue = 0
        slider.maximumValue = 1.0
        slider.isContinuous = true
    }

    @IBAction func cameraClicked(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Camera", message: "Click!",
                                                preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: .default) {
            action in
            print("You tapped \(action.title ?? "the action button")")
        })

        present(alertController, animated: true) {
            print("Finished with alert controller")
        }
    }
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            slider.value = 0.25
        case 1:
            slider.value = 0.66
        case 2:
            slider.value = 0.78
        default:
            slider.value = 1.0
        }

        sliderMoved(slider)
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        progressView.progress = slider.value
        
        if progressView.progress >= 1.0 {
            activityIndicator.stopAnimating()
        } else {
            activityIndicator.startAnimating()
        }
    }
}
