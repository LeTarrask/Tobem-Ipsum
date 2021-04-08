//
//  OutputView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct OutputView: View {
    let output: String
    var body: some View {
        VStack {
            Text(output)
                .lineLimit(nil)
                .padding()
            HStack {
                Button("Generate other") {

                }

                Button("Copy to clipboard") {

                }
            }.padding()
        }.frame(width: 400, alignment: .center)
    }
}

struct OutputView_Previews: PreviewProvider {
    static var previews: some View {
        let generator = StringGenerator()
        let test = generator.createParagraph(with: 8)
        return OutputView(output: test)
    }
}
