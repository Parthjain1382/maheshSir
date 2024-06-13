//
//  SecondViewController.swift
//  NavigationsExamples
//
//  Created by E5000846 on 30/05/24.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBAction func NextVc(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
        vc?.arrayOfEmployee.append(["Name":"Pranay","Employee Id": 1234])
        vc?.number = 5
        self.navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
