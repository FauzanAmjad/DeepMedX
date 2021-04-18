//
//  BruteForceViewController.swift
//  DeepMedX
//
//  Created by Fauzan Amjad on 4/18/21.
//

import UIKit

class BruteForceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet var majorVessels: UITextField!
    @IBOutlet var thalRate: UITextField!
    @IBOutlet var maxHeartRate: UITextField!
    @IBOutlet var chestPain: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func HeartAttackAlg(_ sender: Any) {
        var caa = Double(majorVessels.text!)!
        var thall = Double(thalRate.text!)!
        var thalachh = Double(maxHeartRate.text!)!
        var cp = Double(chestPain.text!)!
        
        if cp < 0.5{
            if caa >= 0.5{
                resultLabel.text = "Low Chance of Heart Attack: 6%"
            }
            else{
                if thall >= 2.5 {
                    resultLabel.text = "Low Chance of Heart Attack: 9%"
                }
                else{
                    resultLabel.text = "High Chance of Heart Attack: 76%"
                }
            }
        }
        else{
            if thall >= 2.5{
                if thalachh < 143{
                    resultLabel.text = "Low Chance of Heart Attack: 12%"
                }
                else{
                    resultLabel.text = "High Chance of Heart Attack: 65%"
                }
            }
            else{
                resultLabel.text = "High Chance of Heart Attack: 87%"
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
