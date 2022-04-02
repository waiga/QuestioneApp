//
//  ContentView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import SwiftUI

struct ContentView: View {
    let question: Question
    
    @State var guessedIndex: Int? = nil
   
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.7, green: 0.75, blue: 0.75, opacity: 0.4)
                //.ignoresSafeArea()
            VStack {
                Text("Questionnaire!")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                .padding()
                Text("Question 1 / 4")
                    .padding()
                Spacer()
                Text(question.questionText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    ForEach(question.possibleAnswers.indices) { index in
                        AnswerButton(text: question.possibleAnswers[index]) {
                            guessedIndex = index
                            print("New Print Location!")
                        }
                        .background(colorForButton(at: index))
                            //.disabled(guessedIndex != nil)
                    }
                }
            }
        }
    }
    
    func colorForButton(at buttonIndex: Int) -> Color {
        guard let guessedIndex = guessedIndex, guessedIndex == buttonIndex else {
            return .clear
        }
        if guessedIndex == question.correctAnswerIndex {
            return .green
        } else {
            return .red
        }

    }
}

struct AnswerButton: View {
    let text: String
    let onClick: () -> Void
    var body: some View {
            Button(action: {
                print("You selected \(text)")
                onClick()
            }) {
                Text(text)
            }
            .padding()
        .border(Color.blue, width: 3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(question: Question.allQuestions[0])
            .previewInterfaceOrientation(.portrait)
        ContentView(question: Question.allQuestions[0])
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
    }
}
