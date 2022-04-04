//
//  MainTabView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/03.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            //GameView(question: Question.allQuestions[0])
            WelcomeView()
                .tabItem { Label("Game", systemImage: "gamecontroller")}
            ControlsView()
                .tabItem {
                    Label("Controls", systemImage: "gear")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
