//
//  HandsViewController.swift
//  Roshambo
//
//  Created by June2020 on 4/4/21.
//

import UIKit

class HandsViewController: UIViewController {
    
    // playerChoice is a global variable that holds the Paper=1/Rock=2/Scissors=3 player's choice
    var playerChoice: Int = 0
    
    
    @IBAction func chosePaper() {
        playerChoice = 1
        self.performSegue(withIdentifier: "seguePlusCode", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! ResultsViewController
        // 1=Paper, 2=Rock, 3=Scissors
        var computerChoice = randomChooseRPS()
        
        if computerChoice == playerChoice {
            controller.resultsPic = UIImage (named: "itsATie")
            controller.resultsText = "It's a Tie! Try Again."
        }
        if playerChoice == 1 && computerChoice == 2 {
            controller.resultsPic = UIImage (named: "PaperCoversRock")
            controller.resultsText = "Paper covers Rock.  You Win!"
        }
        if playerChoice == 1 && computerChoice == 3 {
            controller.resultsPic = UIImage (named: "ScissorsCutPaper")
            controller.resultsText = "Scissors cut paper. You Lose!"
        }
        if playerChoice == 3 && computerChoice == 1 {
            controller.resultsPic = UIImage (named: "ScissorsCutPaper")
            controller.resultsText = "Scissors cut paper. You Win!"
        }
        if playerChoice == 3 && computerChoice == 2 {
            controller.resultsPic = UIImage (named: "RockCrushesScissors")
            controller.resultsText = "Rock crushes Scissors.  You Lose!"
        }
    }
    
    @IBAction func choseRock() {
        
        let controller: ResultsViewController
                controller = storyboard?.instantiateViewController(withIdentifier: "resultsViewController") as! ResultsViewController
        // 
        // 1=Paper, 2=Rock, 3=Scissors
       var computerChoice = randomChooseRPS()
        if computerChoice == 2 {
            controller.resultsPic  = UIImage (named: "itsATie")
            controller.resultsText = "It's a Tie! Try Again."
        }
        if computerChoice == 1 {
            controller.resultsPic = UIImage (named: "PaperCoversRock")
            controller.resultsText = "Paper covers Rock. You Lose!"
        }
        if computerChoice == 3 {
            controller.resultsPic = UIImage (named: "RockCrushesScissors")
            controller.resultsText = "Rock crushes Scissors.  You Win!"
        }

                present(controller, animated: true, completion: nil)
            }
    

    @IBAction func choseScissors() {
        playerChoice = 3
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

func randomChooseRPS() -> Int {
    // here the computer chooses a position:
    // 1=Paper, 2=Rock, 3=Scissors
   return Int.random(in: 1 ... 3)
   
}

}
