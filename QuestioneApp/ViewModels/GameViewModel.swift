//
//  GameViewModel.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

class GameViewModel: ObservableObject {
    @Published var game = Game()
    
    var questionText: String {
        game.currentQuestion.questionText
    }
    
    var answerIndices: Range<Int> {
        game.currentQuestion.possibleAnswers.indices
    }
    
    var correctAnswerIndex: Int {
        game.currentQuestion.correctAnswerIndex
    }
    
    func answerText(for index: Int) -> String {
        game.currentQuestion.possibleAnswers[index]
    }
    
    func advanceGameState() {
        game.advanceGameState()
    }
    var progressText: String {
        "Question \(game.currentQuestionIndex + 1) / \(game.questionCount) "
    }
//    var correctSelectionCount: Int {
//        game.selectionCount.correct
//    }
//    
//    var incorrectSlectionCount: Int {
//        game.selectionCount.incorrect
//    }
    
    var selectionCount: (Int, Int) {
        game.selectionCount
    }
    var gameIsOver: Bool {
        game.gameIsOver
    }
    var gameStartTime: Date {
        game.startTime
    }
    
    func makeGuessForCurrentQuestion(at index: Int) {
        game.makeSelection(at: index)
    }
    var guessWasMade: Bool {
        game.selections[game.currentQuestion] != nil
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let selectedIndex = game.selections[game.currentQuestion], selectedIndex == buttonIndex else {
            return .clear
        }
        if selectedIndex == correctAnswerIndex
            //question.correctAnswerIndex
        {
            return .green
        } else {
            return .red
        }

    }
}

// shift + command + f -> search
