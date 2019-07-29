//
//  Question.swift
//  Quiz
//
//  Created by macPro on 7/24/19.
//  Copyright © 2019 Dhiraj. All rights reserved.
//

import Foundation


class Question {
    
    let question : String
    let optionA : String
    let optionB : String
    let optionC : String
    let optionD : String
    let correctAnswer : Int
    
    init(questionText: String, choiceA: String, choiceB: String, choiceC: String, ChoiceD: String, answer: Int) {
        question = questionText
        optionA = choiceA
        optionB = choiceB
        optionC = choiceC
        optionD = ChoiceD
        correctAnswer = answer
    }
    
}
