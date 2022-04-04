//
//  ResultsView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct ResultsView: View {
    let viewModel: ResultsViewModel
    
    var body: some View {
        
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack {
                Spacer()
                HStack {
                    Text("Final Score: ")
                    Text(viewModel.finalPercentText)
                }
                .font(.title)
                .padding()
                HStack {
                Text("Letter Grade: ")
                    Text(viewModel.letterGradeText)
                    
                }
                    .padding()
                    .font(.title)
                Text(viewModel.correctSelectionText)
                    .padding()
                    .font(.system(size: 38))
                Text(viewModel.incorrectSelectionText)
                    .padding()
                    .font(.system(size: 38))
                Text("Total Time: \(viewModel.totalGameTimeText) seconds")
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomText(str: "다시하기")
                        .padding(.bottom)
                })
            }
        }
        .navigationBarHidden(true)
        }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ResultsView(viewModel: ResultsViewModel(selectionCount: (4, 0), gameStartTime: Date(), gameEndTime: Date()))
        }
    }
}
