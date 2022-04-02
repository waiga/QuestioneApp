//
//  ContentView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import SwiftUI

struct ContentView: View {
    let question = "What was the first computer bug?"
    let possibleAnswers = [
        "Fly",
        "Ant",
        "Beatle",
        "Moth"
    
    ]
    var body: some View {
        ZStack {
            Color(.sRGB, red: 0.7, green: 0.75, blue: 0.75, opacity: 0.4)
                .ignoresSafeArea()
            VStack {
                Text("Questionnaire!")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                .padding()
                Text("Question 1 / 4")
                    .padding()
                Spacer()
                Text(question)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    ForEach(possibleAnswers.indices) { index in
                        AnswerButton(text: possibleAnswers[index])
                    }
                }
            }
            
        }
        
    }
}

struct AnswerButton: View {
    let text: String
    var body: some View {
        Button(action: {
            print("You selected \(text)")
        }) {
            Text(text)
        }
        .padding()
        .border(Color.blue, width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
            .preferredColorScheme(.dark)
    }
}
