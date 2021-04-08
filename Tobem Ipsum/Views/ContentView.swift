//
//  ContentView.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var generator: StringGenerator = StringGenerator()

    var body: some View {
        VStack {
            if generator.generatedText == "" {
                InputView(generator: generator)
            } else {
                OutputView(generator: generator) 
            }
            Button(action: {
                NSApplication.shared.terminate(self)
            })
            {
                Text("Quit App")
                .font(.caption)
                .fontWeight(.semibold)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
