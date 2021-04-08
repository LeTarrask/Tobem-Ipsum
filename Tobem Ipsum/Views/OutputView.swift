//
//  OutputView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct OutputView: View {
    @ObservedObject var generator: StringGenerator

    var body: some View {
        VStack {
            Text(generator.generatedText)
                .lineLimit(50)
                .padding()
            HStack {
                Button("Generate other") {
                    generator.generatedText = ""
                }

                Button("Copy to clipboard") {
                    let pasteboard = NSPasteboard.general
                    pasteboard.declareTypes([.string], owner: nil)
                    pasteboard.setString(generator.generatedText, forType: .string)
                }
            }.padding()
        }.frame(width: 400, alignment: .center)
    }
}

//struct OutputView_Previews: PreviewProvider {
//    static var previews: some View {
//        let generator = StringGenerator()
//        let test = generator.createParagraph(with: 8)
//        return OutputView(output: test)
//    }
//}
