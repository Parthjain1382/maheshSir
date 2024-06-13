//
//  ViewController.swift
//  SegueAndNavigator
//
//  Created by E5000846 on 29/05/24.
//

import UIKit

class ViewController: UIViewController {
    
    var Uibutton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Position and size of the button
        Uibutton = UIButton(frame: CGRect(x: view.frame.size.width*0.3, y: view.frame.size.height*0.5, width: view.frame.size.width*0.4, height: view.frame.size.height*0.03))
        Uibutton.backgroundColor = .cyan
        Uibutton.setTitle("Navigate", for: .normal)
        Uibutton.addTarget(self, action: #selector(navigationToNextPage), for: .touchUpInside)
        view.addSubview(Uibutton)
        
    }
    
    @objc func navigationToNextPage(){
        performSegue(withIdentifier: "secondVc", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVc" {
            if let destinationVc = segue.destination as? SecondViewController{
                destinationVc.modalPresentationStyle = .fullScreen
                
            }
        }
    }
    
   
}

