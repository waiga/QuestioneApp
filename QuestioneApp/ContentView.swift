//
//  ContentView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Questionnaire!")
                .font(.largeTitle)
                .foregroundColor(Color.red)
            .padding()
            Text("Question 1 / 4")
                .padding()
            Spacer()
            Text("What is 1 + 1?")
                .font(.title)
                .padding()
            Spacer()
            Spacer()
            HStack {
                AnswerButton()
                
                Button(action: {
                    print("You selected 2")
                }) {
                    Text("1")
                }
                .padding()
            .border(Color.blue, width: 4)
                Button(action: {
                    print("You selected 2")
                }) {
                    Text("2")
                }
                .padding()
            .border(Color.blue, width: 4)
                Button(action: {
                    print("You selected 3")
                }) {
                    Text("3")
                }
                .padding()
            .border(Color.blue, width: 4)
                Button(action: {
                    print("You selected 4")
                }) {
                    Text("4")
                }
                .padding()
            .border(Color.blue, width: 4)
            }
            
        }
    }
}

struct AnswerButton: View {
    var body: some View {
        Button(action: {
            print("You selected 4")
        }) {
            Text("4")
        }
        .padding()
    .border(Color.blue, width: 4)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            
    }
}
