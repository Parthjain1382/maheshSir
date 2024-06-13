//
//  ViewController.swift
//  XibExample
//
//  Created by E5000846 on 03/06/24.
//

import UIKit

class ViewController: UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let nib1 = UINib(nibName: "ReusableView", bundle: nil)
        if let reusableView = nib1.instantiate(withOwner: self, options: nil).first as? ReusableView {
            // Add the reusable view to the TopView
            reusableView.frame = CGRect.init(x: 10, y: 300, width: 357, height: 90)
            view.addSubview(reusableView)
            
            reusableView.NameLB.text = "Pranay Jain"
            reusableView.planeBtn.addTarget(self, action: #selector(planeBtn), for: .touchUpInside)
            reusableView.BookmarkBtn.addTarget(self, action: #selector(didTapBookmark), for: .touchUpInside)
                    
        }
    }
    
    @objc func planeBtn(){
        let alert = UIAlertController(title: "Confirmation", message: "Do you want to navigate?", preferredStyle: .alert)
              
              let yesAction = UIAlertAction(title: "Yes", style: .default) { _ in
                  self.performSegue(withIdentifier: "secondViewSegue", sender: self)
              }
              
              let noAction = UIAlertAction(title: "No", style: .cancel, handler: nil)
              
              alert.addAction(yesAction)
              alert.addAction(noAction)
              
              self.present(alert, animated: true, completion: nil)
          }

    
    @objc func didTapBookmark() {
        let alert = UIAlertController(title: "BookMarked", message: "your Blog has been Bookmarked", preferredStyle: .alert)
              
        let noAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
              
        alert.addAction(noAction)
        self.present(alert, animated: true, completion: nil)
        
    }

    
}

