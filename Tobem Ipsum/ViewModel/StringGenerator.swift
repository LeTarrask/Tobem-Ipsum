//
//  StringGenerator.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import Foundation

final class StringGenerator: ObservableObject {
    /// Controls the app
    /// Publishes a generatedText String created from a chosen vocabulary
    @Published var generatedText = ""
    @Published var vocabulary: Vocabulary = Vocabulary.parrot

    // MARK: - Vocabulary management methods
    init() {
        self.vocabulary = currentVocabulary()
    }

    func currentVocabulary() -> Vocabulary {
        if let storedVocabulary = (UserDefaults.standard.object(forKey: "Vocabulary") as AnyObject).integerValue {
            return Vocabulary(rawValue: storedVocabulary)!
        } else {
            return .parrot
        }
    }

    func choseVocabulary(dict: Vocabulary) {
        // First persist the selected theme using NSUserDefaults.
        UserDefaults.standard.setValue(dict.rawValue, forKey: "Vocabulary")
        UserDefaults.standard.synchronize()

        self.vocabulary = dict
    }

    // MARK: - These are the generator methods
    private func createParagraph(with length: Int) -> String {
        var paragraph = String()
        for _ in 1...length {
            let wordCount = Int.random(in: 4...12)
            paragraph.append(createSentence(with: wordCount))
        }
        return paragraph
    }

    private func createSentence(with words: Int) -> String {
        var sentence = [String()]
        for _ in 1...words {
            sentence.append(vocabulary.words.randomElement() ?? "")
        }
        return sentence.filter {$0 != "" }.joined(separator: ", ").capitalizingFirstLetter()+". "
    }

    func generate(vocabs: Int, sentences: Int, paragraphs: Int) {
        if vocabs > 0 {
            generatedText = createSentence(with: vocabs)
        } else if sentences > 0 {
            generatedText = createParagraph(with: sentences)
        } else if paragraphs > 0 {
            var fullText = ""
            for _ in 1...paragraphs {
                fullText += createParagraph(with: 5) + "\n"
            }
            generatedText = fullText
        }
    }

    func reset() {
        generatedText = ""
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
