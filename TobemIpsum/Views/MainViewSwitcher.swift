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
        
        ScrollView {
            VStack(alignment: .leading) {
                InputView(paragraphs: 1, generator: generator)
                
                if generator.generatedText != "" {
                    OutputView(generator: generator)
                }
                
                DictionaryPicker(generator: generator, vocab: generator.vocabulary, setUp: $setUp)
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainViewSwitcher()
    }
}
