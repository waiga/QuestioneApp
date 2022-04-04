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
    
    private(set) var currentQuestionIndex = 0
    
    private(set) var selections = [Question: Int]()
    
    private var gameIsOver: Bool = false
    
    //MARK: - Internal Methods and Properties
    
    var currentQuestion: Question {
        questions[currentQuestionIndex]
    }
    var questionCount: Int {
        questions.count
    }
    
    
    mutating func advanceGameState() {
        let nextQuestionIndex = currentQuestionIndex + 1
        if !questions.indices.contains(nextQuestionIndex) {
            gameIsOver = true
            print("Game Over!")
        } else {
            currentQuestionIndex = nextQuestionIndex
        }
    }
    
    mutating func makeSelection(at index: Int) {
        selections[currentQuestion] = index
    }
    
}
