//
//  ViewController.swift
//  warcardgame
//
//  Created by Kenneth Murerwa on 04/01/2022.
//

import UIKit

class ViewController: UIViewController {
    // Image views
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    // Score labels
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func dealButtonTapped(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        updateScores(leftNumber: leftNumber, rightNumber: rightNumber)
    }
    
    func updateScores(leftNumber: Int = 0, rightNumber: Int = 0) {
        if leftNumber > rightNumber {
            // Left wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
        } else if leftNumber < rightNumber {
            // Right wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
        } else {
            // Tie
        }
    }
}

