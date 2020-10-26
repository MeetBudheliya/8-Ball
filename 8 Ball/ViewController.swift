//
//  ViewController.swift
//  8 Ball
//
//  Created by MAC on 09/09/20.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var remainingQuestionLabel: UILabel!
    @IBOutlet weak var remainingLabel: UILabel!
    var questions = ["What's Your Name?" ,
    "Your Residential Area?" ,
    "Your Favourite Song ?" ,
    "Your Study?",
    "You Know About Which Programming Language?" ,
    "Coffee Or Tea ?" ,
    "Are You Married ?"]
    var presentQuestion = 0
    var remainingQuestion = 6
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = "Are You Ready!"
        remainingQuestionLabel.text = ""
        remainingLabel.text = "Start"
        questionLabel.numberOfLines = 5
    }
    
    @IBAction func askMeButton(_ sender: UIButton) {
        if presentQuestion < 7
        {
            remainingLabel.text = "Remaining : "
            questionLabel.text = questions[presentQuestion]
            presentQuestion += 1
            remainingQuestionLabel.text = String(remainingQuestion)
            remainingQuestion -= 1
        }
        else
        {
            presentQuestion = 0
            questionLabel.text = "Get Ready For Once Again!"
            if questionLabel.text == "Get Ready For Once Again!"
            {
                remainingLabel.text = "Start"
                remainingQuestionLabel.text = ""
            }
            remainingQuestion = 6
        }
    }
}
