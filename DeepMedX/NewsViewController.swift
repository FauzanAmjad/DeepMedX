//
//  NewsViewController.swift
//  DeepMedX
//
//  Created by Fauzan Amjad on 4/18/21.
//

import UIKit
import SafariServices

class NewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4562827/")!)
        present(vc,animated: true)
    }
    
    @IBAction func button1Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4961993/")!)
        present(vc,animated: true)
    }
    @IBAction func button2Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ajmc.com/view/fda-approves-dapagliflozin-to-treat-heart-failure-breaking-new-ground-in-sglt2-competition")!)
        present(vc,animated: true)
    }
    @IBAction func button3Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ajmc.com/view/racial-disparities-persist-for-patients-with-ambulatory-heart-failure")!)
        present(vc,animated: true)
    }
    @IBAction func button4Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ajmc.com/view/how-do-hospitalizations-for-heart-failure-differ-before-vs-during-the-covid-19-era-")!)
        present(vc,animated: true)
    }
    @IBAction func button5Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.ajmc.com/view/heart-failure-publications-trial-research-continues-to-lack-women-authors")!)
        present(vc,animated: true)
    }
    @IBAction func button6Tapped(_ sender: Any) {
        let vc = SFSafariViewController(url: URL(string: "https://www.medicalnewstoday.com/articles/7624")!)
        present(vc,animated: true)
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
