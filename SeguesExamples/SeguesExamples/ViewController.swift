//
//  ViewController.swift
//  SeguesExamples
//
//  Created by E5000846 on 30/05/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func NavButton(_ sender: UIButton) {
        performSegue(withIdentifier: "secondVc", sender: self)
            }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVc" {
            print("Segue destination: \(segue.destination)")
            if let destinationVc = segue.destination as? SecondViewController {
                // Perform any setup on destinationVc here
                destinationVc.modalPresentationStyle = .fullScreen
                destinationVc.modalTransitionStyle = .crossDissolve
            } else {
                print("Destination view controller is not of type SecondViewController")
            }
        }
    }

}

