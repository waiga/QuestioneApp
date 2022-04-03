//
//  QuestioneAppApp.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/02.
//

import SwiftUI

@main
struct QuestioneAppApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
            //GameView(question: Question.allQuestions[0])
        }
    }
}
