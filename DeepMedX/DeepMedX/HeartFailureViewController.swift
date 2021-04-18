//
//  HeartFailureViewController.swift
//  DeepMedX
//
//  Created by Fauzan Amjad on 4/18/21.
//

import UIKit

class HeartFailureViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var followUpDays: UITextField!
    @IBOutlet var serum_creatinine: UITextField!
    @IBOutlet var serum_sodium: UITextField!
    @IBOutlet var platelets: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func runHeartFailureAlgorithm(_ sender: Any) {
        var days = Int(followUpDays.text!)!
        var sodium = Int(serum_sodium.text!)!
        var creatinine = Double(serum_creatinine.text!)!
        var plates = Int(platelets.text!)!
       
        if days >= 74{
            if creatinine < 1.6 {
                resultLabel.text = "Low Chance of Heart Failure: 8%"
            }
            else{
                if days >= 210 {
                    resultLabel.text = "Low Chance of Heart Failure: 10%"
                }
                else{
                    if plates >= 226000{
                        resultLabel.text = "Low Chance of Heart Failure: 44%"
                    }
                    else{
                        resultLabel.text = "Potential Chance of Heart Failure: 77%"
                    }
                }
            }
        }
        else{
            if sodium >= 137{
                if days >= 49{
                    resultLabel.text = "Low Chance of Heart Failure: 42%"
                }
                else{
                    resultLabel.text = "High Chance of Heart Failure: 84%"
                }
            }
            else {
                resultLabel.text = "High Chance of Heart Failure: 95%"
            }
        }
        
            
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
