//
//  ContentView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    //let question: Question
    
    //@State var selectionedIndex: Int? = nil
   
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            //Color(.sRGB, red: 0.7, green: 0.75, blue: 0.75, opacity: 0.4)
            VStack {
                Text("질문지!")
                    .font(.largeTitle)
                    .foregroundColor(Color.red)
                .padding()
                Text(viewModel.progressText)
                    .padding()
                Spacer()
                Text(viewModel.questionText)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                Spacer()
                HStack {
                    ForEach(viewModel.answerIndices) { index in
                        AnswerButton(text: viewModel.answerText(for: index)) {
                            viewModel.makeGuessForCurrentQuestion(at: index)
                            //selectionedIndex = index
                            //print("New Print Location!")
                        }
                        .background(
                            viewModel.colorForButton(at: index)
                            //colorForButton(at: index)
                        )
                        //.disabled(viewModel.selectionWasMade)
                            //.disabled(selectionedIndex != nil)
                    }
                }
                Spacer()
                if viewModel.guessWasMade
                    //selectionedIndex != nil
                {
                    Button(action: viewModel.advanceGameState, label: {BottomText(str: "다음 문항")})
//                    BottomText(str: "다음 문항") {
//                        viewModel.advanceGameState()
//                    }
                }
                //Spacer()
            }
            .padding(.bottom)
        }
        .navigationBarHidden(true)
        .background(resultsNavigationLink)
    }
    private var resultsNavigationLink: some View {
            NavigationLink(
                destination: ResultsView(viewModel: ResultsViewModel(selectionCount: viewModel.selectionCount, gameStartTime: viewModel.gameStartTime, gameEndTime: Date() )),
                isActive: .constant(viewModel.gameIsOver),
                label: { EmptyView() })
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
        NavigationView {
            GameView()
        }
        //GameView(question: Question.allQuestions[0])
            .previewInterfaceOrientation(.portrait)
//        GameView(question: Question.allQuestions[0])
//            .previewInterfaceOrientation(.landscapeLeft)
//            .preferredColorScheme(.dark)
    }
}
