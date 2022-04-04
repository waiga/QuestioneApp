//
//  Game.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/03.
//

import Foundation

struct Game {
    
    // MARK: - Private Properties
    
    var startTime = Date()
    
    private let questions = Question.allQuestions.shuffled()
    
    private(set) var currentQuestionIndex = 0
    
    private(set) var selections = [Question: Int]()
    
    var gameIsOver: Bool = false
    
    //MARK: - Internal Methods and Properties
    
    var selectionCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, selectedIndex) in selections {
            if selectedIndex == question.correctAnswerIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        return count
    }
    
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
