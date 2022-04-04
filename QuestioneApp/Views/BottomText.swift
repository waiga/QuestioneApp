//
//  BottomText.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/03.
//

import SwiftUI

struct BottomText: View {
    let str: String
    //let onClick: () -> Void
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
            .font(.body)
            .fontWeight(.bold)
            .padding(.all)
//            Button(action: onClick,
//                   label: {
//            })
            Spacer()
        }.background(Color.blue.opacity(0.4))
    }
}

struct BottomText_Previews: PreviewProvider {
    static var previews: some View {
        BottomText(str: "This is Text")
        //{}
//            .preferredColorScheme(.dark)
    }
}
