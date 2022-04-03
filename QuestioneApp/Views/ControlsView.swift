//
//  ControlsView.swift
//  QuestioneApp
//
//  Created by 김미향 on 2022/04/03.
//

import SwiftUI

struct ControlsView: View {
    @State var name = "user"
    @State var shapeCount = 5
    
    var body: some View {
        VStack {
            Text("Controls")
                .font(.largeTitle)
                .padding()
            Text("Welcome \(name)")
            Spacer()
            HStack {
                ForEach(0..<shapeCount, id: \.self) { _ in
                    Circle()
                }
            }
            Form {
                TextField("Johnny Applesed", text: $name)
                Stepper("Number of shapes \(shapeCount)", value: $shapeCount, in: 1...8)
            }
            
        }
    }
}

struct ControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ControlsView()
    }
}
