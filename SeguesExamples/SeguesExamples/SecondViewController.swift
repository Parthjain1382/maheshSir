//
//  SecondViewController.swift
//  SeguesExamples
//
//  Created by E5000846 on 30/05/24.
//

import UIKit

class SecondViewController: UIViewController {

   
    var navToThirdVcButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan

        //third Vc Navigation Button
        navToThirdVcButton = UIButton(frame: CGRect(x: self.view.frame.size.width*0.3, y: self.view.frame.size.height*0.4, width: self.view.frame.size.width*0.4, height: self.view.frame.size.height*0.05))
        
        navToThirdVcButton.setTitle("navigateToThird", for: .normal)
        
        navToThirdVcButton.backgroundColor = .green
        navToThirdVcButton.addTarget(self, action: #selector(GoToThirdVc), for: .touchUpInside)
        view.addSubview(navToThirdVcButton)
        
    }
    
    @objc func GoToThirdVc(){
        print("go to third vc")
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController else {
                    print("Failed to instantiate ThirdViewController")
                    return
                }
        
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
//                self.navigationController?.pushViewController(vc, animated: true)
        
        }
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
