//
//  ContentView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct MainViewSwitcher: View {
    @ObservedObject var generator: StringGenerator = StringGenerator()

    @State var setUp: Bool = false

    var body: some View {
        VStack(alignment: .leading) {
            if setUp {
                DictionaryPicker(generator: generator, vocab: generator.vocabulary, setUp: $setUp)
            } else {
                if generator.generatedText == "" {
                    InputView(generator: generator)
                } else {
                    OutputView(generator: generator)
                }
            }
            Button { setUp.toggle() } label: {
                Text("Change dictionary")
                            .font(.caption)
                            .fontWeight(.semibold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewSwitcher()
    }
}
