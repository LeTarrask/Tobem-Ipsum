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

    // TO DO: create a property that selects vocabulary
    // allow user to pick and choose which generator to use

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
            sentence.append(vocabulary.randomElement() ?? "")
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

    private let vocabulary = ["feijoeiro", "tronco do ser humano", "finar mais derradeiro", "rosquinha enfezada", "rosca", "as parte", "bocado arengueiro", "fiofó", "bufante", "frescó", "lorto", "apito", "brote", "bozó", "furico", "fedegoso", "piscante", "pelado", "boga", "fosquete", "frinfra", "sedém", "zueiro", "ficha", "vintém", "ás de copa", "foba", "oiti", "oi de porco", "ané de couro", "cagueiro", "girassol", "goiaba", "roseta", "rosa", "rabada", "boto", "zero", "miaieiro", "nó dos fundo", "buzeco", "sonoro", "pregueado", "rabichol", "furo", "argola", "ané de ouro", "ané de sola", "boca de véia", "zangado", "aro treze", "peidante", "zé de boga", "danado", "boca da tarraqueta", "quinca", "dentrol", "zé besquete", "carrapeta", "rosca", "rosquinha", "tareco", "frasco", "obrón", "ceguinho", "botico", "zero", "tripa gaiteira", "fonfom", "miaieiro", "mucumbuco", "boraco", "proa", "polgueiro", "forever", "cloaca", "urna", "gritador", "frango", "ueiro", "cano de escape", "pretinho", "rodinha", "x.p.t.o.", "zerinho", "subiador", "tripa oca", "fiofó", "elitório", "boca de caçapa", "canto escuro", "boréu", "cheiroso", "formiróide alvado", "parreco", "manhoso", "xambica", "sibasol", "apolônio", "fobilário", "bilé", "brioco", "roxim", "fresado", "anilha", "cagário", "vaso preto", "zé careta", "olho cego", "espoleta", "fuzil", "fioto", "foário", "orió", "bostoque", "futrico", "ilhó", "coliseu", "caneco", "roscofe", "forno", "botão", "disco", "farinheiro", "jolie", "fundo", "fundão", "cuovades", "fichinha", "zé de quinca", "canal dois", "cagador", "buzina", "vesúvio", "cego", "federais", "faguieiro", "zé zoada", "rosquete", "fim de regada", "ânus", "fiofó"]

    private let parrot = ["is dead",  "is deceased", "is demised", "has passed on", "is no more", "has ceased to be", "expired",  "has gone to meet 'is maker", "is a stiff", "bereft of life", "rests in peace", "is pushing up the daisies", "his metabolic processes are now 'istory",  "is off the twig", "kicked the bucket", "shuffled off 'is mortal coil", "ran down the curtain", "joined the bleedin' choir invisible", "pegged out", "cashed in his chips", "succumbed", "has gone", "has departed", "has fallen", "died away", "parted from life", "has gone on a journey", "totally died off", "with its spirit sent forth", "completely scattered", "glided away", "went out of this world", "fared", "left", "parted", "is gathered to his fathers", "went over to the majority", "went home", "passed to one's reward", "launched into eternity", "went to glory", "meet his Maker", "got his call", "slipped his cable", "kicked the bucket", "given up the ghost", "his silver cord is loosed", "has taken the ferry", "paid his debt to nature", "went up the flume", "hand in his accounts", "relented", "unbreathed", "transpasses", "lost his breath", "stiffened", "dropped short", "stepped out", "walked", "perched", "knocked over", "shuffled off this mortal coil", "croaked", "kissed off", "yielded the ghost", "expired", "passed away", "is off the hooks", "snuffed it", "copped it", "is off it", "creased it", "has had it", "THIS IS AN EX-PARROT!"]
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
