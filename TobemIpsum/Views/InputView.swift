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
        VStack(alignment: .leading) {
            Text("Create your random text")
                .font(.headline)

            Stepper("Words: \(words)",
                    value: $words, in: 0...10)

            Stepper("Sentences: \(sentences)",
                    value: $sentences, in: 0...10)

            Stepper("Paragraphs: \(paragraphs)",
                    value: $paragraphs, in: 0...10)

            Button("Generate Text") {
                generator.generate(words: words, sentences: sentences, paragraphs: paragraphs)
            }
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(generator: StringGenerator())
    }
}
