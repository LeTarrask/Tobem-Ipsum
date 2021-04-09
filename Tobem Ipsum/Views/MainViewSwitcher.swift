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
        VStack {
            if setUp {
                DictionaryPicker(generator: generator, vocab: generator.vocabulary, setUp: $setUp)
            } else {
                if generator.generatedText == "" {
                    InputView(generator: generator)
                } else {
                    OutputView(generator: generator)
                }
            }
            HStack {
                Button { setUp.toggle() } label: {
                    Text("Change dictionary")
                                .font(.caption)
                                .fontWeight(.semibold)
                }
                Button { NSApplication.shared.terminate(self) } label: {
                    Text("Quit App")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewSwitcher()
    }
}
