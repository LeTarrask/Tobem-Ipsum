//
//  DictionaryPicker.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 09/04/2021.
//

import SwiftUI

struct DictionaryPicker: View {
    @ObservedObject var generator: StringGenerator

    @State var vocab: Vocabulary

    @Binding var setUp: Bool

    var body: some View {
        VStack {
            Text("Choose your dictionary")
                .font(.headline)
            EnumPicker(selection: $vocab, label: Text(vocab.description))
            Button("Save") {
                generator.choseVocabulary(dict: vocab)
                setUp.toggle()
            }.padding()
        }
        .padding()
        .frame(width: 300)
    }
}

struct DictionaryPicker_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryPicker(generator: StringGenerator(), vocab: Vocabulary.parrot, setUp: .constant(true))
    }
}
