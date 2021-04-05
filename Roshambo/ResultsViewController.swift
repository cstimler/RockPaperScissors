//
//  ResultsViewController.swift
//  Roshambo
//
//  Created by June2020 on 4/4/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultsLabel: UILabel!
    @IBOutlet var resultsImage: UIImageView!
    
    var resultsText: String?
    var resultsPic: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        if let resultsText = self.resultsText {
            self.resultsLabel.text = resultsText
        } else {
            self.resultsLabel.text = nil;
        }
        
        if let resultsPic = self.resultsPic {
            self.resultsImage.image = resultsPic
        } else {
            self.resultsImage.image = nil
        }
        
        self.resultsLabel.alpha = 0
        self.resultsImage.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.resultsLabel.alpha = 1
            self.resultsImage.alpha = 1
        }
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
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
