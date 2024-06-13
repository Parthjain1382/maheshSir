//
//  ViewController.swift
//  NavigationsExamples
//
//  Created by E5000846 on 30/05/24.
//

import UIKit

class ViewController: UIViewController{

    
    @IBAction func NextPage(_ sender: UIButton) {
        
        performSegue(withIdentifier: "SecondVc", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVc" {
            if let destinationVc = segue.destination as? SecondViewController {
                // Set the desired presentation style
                destinationVc.modalPresentationStyle = .fullScreen
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        


    }
    
    


}

