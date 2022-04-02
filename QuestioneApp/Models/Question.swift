//
//  Question.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static let allQuestions: [Question] = [
        Question(questionText: "What was the first computer bug?",
                 possibleAnswers: [
                    "Fly",
                    "Ant",
                    "Beatle",
                    "Moth"
                ],
                 correctAnswerIndex: 3),
        Question(questionText: "what language did ios developers use before swift?",
                 possibleAnswers: [
                    "objective-c",
                    "python",
                    "tyescript",
                    "java"
                
                ],
                 correctAnswerIndex: 0),
        Question(questionText: "computer use the digits zero and one to store data. what is this system called?",
                 possibleAnswers: [
                    "Binnary",
                    "ternary",
                    "decimal",
                    "fraction"
                
                ],
                 correctAnswerIndex: 0),
        Question(questionText: "who invented the world wide web?",
                 possibleAnswers: [
                    "Steve Jobs",
                    "Linus Torvalds",
                    "Bill Gates",
                    "Tim Berners-Lee"
                
                ],
                 correctAnswerIndex: 3)
    ]
}
