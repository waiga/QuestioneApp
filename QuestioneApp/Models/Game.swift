//
//  Game.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/03.
//

import Foundation

struct Game {
    
    // MARK: - Private Properties
    
    private let questions = Question.allQuestions.shuffled()
    
    private var currentQuestionIndex = 0
    
    //MARK: - Internal Methods and Properties
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    
    
    
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        currentQuestionIndex = nextQuestionIndex
    }
    
}
