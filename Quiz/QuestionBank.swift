//
//  QuestionBank.swift
//  Quiz
//
//  Created by macPro on 7/24/19.
//  Copyright © 2019 Dhiraj. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question( questionText: "Grand Central Terminal,Park Avenue,New York is the world's", choiceA: "largest railway station", choiceB: "highest railway station", choiceC: "longest railway station", ChoiceD: "None of the above", answer: 1))
        
        list.append(Question( questionText: "Entomology is the science that studies", choiceA: "Behavior of human beings", choiceB: "Insects", choiceC: "The origin and history of technical and scientific terms", ChoiceD: "The formation of rocks", answer: 2))
        
        list.append(Question( questionText: "Eritrea, which became the 182nd member of the UN in 1993, is in the continent of", choiceA: " Asia", choiceB: "Africa", choiceC: "Europe", ChoiceD: "Australia", answer: 2))
        
        list.append(Question( questionText: "Garampani sanctuary is located at", choiceA: "Junagarh, Gujarat", choiceB: "Diphu, Assam", choiceC: "Kohima, Nagaland", ChoiceD: " Gangtok, Sikkim", answer: 2))
        
        list.append(Question( questionText: "For which of the following disciplines is Nobel Prize awarded?", choiceA: "Physics and Chemistry", choiceB: "Physiology or Medicine", choiceC: "Literature, Peace and Economics", ChoiceD: "All of the above", answer: 4))
        
        list.append(Question( questionText: "Epsom (England) is the place associated with", choiceA: "Horse racing", choiceB: "Polo", choiceC: " Shooting", ChoiceD: "Snooker", answer: 1))
        
        list.append(Question( questionText: "For the Olympics and World Tournaments, the dimensions of basketball court are", choiceA: " 26 m x 14 m", choiceB: "28 m x 15 m", choiceC: "27 m x 16 m", ChoiceD: "28 m x 16 m", answer: 2))
        
        
    }
    
}

