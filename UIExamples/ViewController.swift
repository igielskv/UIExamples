//
//  ViewController.swift
//  UIExamples
//
//  Created by Manoli on 06/07/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func alertButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: "Alert Title", message: "Alert Message", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style: .cancel) { (action) in
            print("all done!")
        }
        alertController.addAction(alertAction)
        present(alertController,animated: true, completion: nil)
    }
    
    @IBAction func activityButtonTapped(_ sender: Any) {
        let activityView = UIActivityViewController(activityItems: ["Data From My App"], applicationActivities: nil)
        present(activityView, animated: true, completion: nil)
    }
    
    @IBAction func sliderDidChange(_ sender: UISlider) {
        progressView.progress = sender.value
        
        if progressView.progress == 1.0 {
            activityIndicator.stopAnimating()
        } else {
            activityIndicator.startAnimating()
        }
    }
    
}

