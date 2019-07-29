//
//  Question.swift
//  Quiz
//
//  Created by macPro on 7/24/19.
//  Copyright © 2019 Dhiraj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    
    //outlets for Buttons:
    

    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    
    //Defining variables and constants:
    var score: Int = 0
    var selectedAnswer: Int = 0
    var questionNumber : Int = 0
    
    
    let allQuestions = QuestionBank()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
    }
    
   
    @IBAction func answerButtonPressed(_ sender: UIButton) {
    
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            
        }else {
            print("wrong")
        }
        
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion() {
        
        if questionNumber <= allQuestions.list.count - 1 {
            
          
            questionLabel.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: .normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: .normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: .normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: .normal)
            
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
            
            updateUI()
            
        } else {
            let alert = UIAlertController(title: "Answer", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.restartQuiz()
            }
            
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
            
        }
     
    }
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1)/ \(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat (questionNumber + 1)
    }
    
    func restartQuiz() {
        
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }

}
