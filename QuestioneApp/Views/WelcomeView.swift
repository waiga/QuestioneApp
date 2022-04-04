//
//  WelcomeView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
//                Color(.sRGB, red: 0.7, green: 0.75, blue: 0.75, opacity: 0.4).ignoresSafeArea()
                VStack {
                    Text("질문지!")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                    .padding()
                    Text("Select the correct answer to each of the following question.")
                        .font(.title2)
                        .padding()
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        BottomText(str: "시작하기")
                            .padding(.bottom)
                    })
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
