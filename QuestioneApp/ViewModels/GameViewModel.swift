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
    
    func makeGuessForCurrentQuestion(at index: Int) {
        game.makeGuess(at: index)
    }
    var guessWasMade: Bool {
        game.guesses[game.currentQuestion] != nil
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let guessedIndex = game.guesses[], guessedIndex == buttonIndex else {
            return .clear
        }
        if guessedIndex == correctAnswerIndex
            //question.correctAnswerIndex
        {
            return .green
        } else {
            return .red
        }

    }
}
