//
//  ContentView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct InputView: View {
    @State var sentences: Int = 0
    @State var paragraphs: Int = 0

    var body: some View {
        VStack(alignment: .center) {
            Text("Create your random text")
                .font(.headline)
                .padding()
            Stepper("Sentences: \(sentences)",
                    value: $sentences, in: 1...10)

            Stepper("Paragraphs: \(paragraphs)",
                    value: $paragraphs, in: 1...10)

            Spacer()

            Button("Generate Text") {

            }.padding()
        }.frame(width: 200, height: 170, alignment: .center)
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView()
    }
}
