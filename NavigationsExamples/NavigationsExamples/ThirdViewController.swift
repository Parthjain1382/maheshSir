//
//  ThirdViewController.swift
//  NavigationsExamples
//
//  Created by E5000846 on 30/05/24.
//

import UIKit

class ThirdViewController: UIViewController {
    var number = Int()
    var arrayOfEmployee = [[String:Any]]()
       
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        printDataFrom2Vc()

        }
    
    func printDataFrom2Vc(){
        for i in arrayOfEmployee{
            print(i)
    }
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
