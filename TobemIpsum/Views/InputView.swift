//
//  ContentView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct InputView: View {
    @State var words: Int = 0
    @State var sentences: Int = 0
    @State var paragraphs: Int = 0

    @ObservedObject var generator: StringGenerator

    var body: some View {
        VStack(alignment: .center) {
            Text("Create your random text")
                .font(.headline)
                .padding()
            Stepper("Words: \(words)",
                    value: $words, in: 1...10)

            Stepper("Sentences: \(sentences)",
                    value: $sentences, in: 1...10)

            Stepper("Paragraphs: \(paragraphs)",
                    value: $paragraphs, in: 1...10)

            Spacer()

            Button("Generate Text") {
                generator.generate(vocabs: words, sentences: sentences, paragraphs: paragraphs)
            }.padding()
        }.frame(width: 200, height: 170, alignment: .center)
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(generator: StringGenerator())
    }
}
