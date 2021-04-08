//
//  StringGenerator.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import Foundation

final class StringGenerator: ObservableObject {
    func createParagraph(with length: Int) -> String {
        var paragraph = String()
        for _ in 1...length {
            let wordCount = Int.random(in: 4...12)
            paragraph.append(createSentence(with: wordCount))
        }
        return paragraph
    }

    func createSentence(with words: Int) -> String {
        var sentence = [String()]
        for _ in 1...words {
            sentence.append(vocabulary.randomElement() ?? "")
        }
        return sentence.filter {$0 != "" }.joined(separator: ", ").capitalizingFirstLetter()+". "
    }

    private let vocabulary = ["feijoeiro", "tronco do ser humano", "finar mais derradeiro", "rosquinha enfezada", "rosca", "as parte", "bocado arengueiro", "fiofó", "bufante", "frescó", "lorto", "apito", "brote", "bozó", "furico", "fedegoso", "piscante", "pelado", "boga", "fosquete", "frinfra", "sedém", "zueiro", "ficha", "vintém", "ás de copa", "foba", "oiti", "oi de porco", "ané de couro", "cagueiro", "girassol", "goiaba", "roseta", "rosa", "rabada", "boto", "zero", "miaieiro", "nó dos fundo", "buzeco", "sonoro", "pregueado", "rabichol", "furo", "argola", "ané de ouro", "ané de sola", "boca de véia", "zangado", "aro treze", "peidante", "zé de boga", "danado", "boca da tarraqueta", "quinca", "dentrol", "zé besquete", "carrapeta", "rosca", "rosquinha", "tareco", "frasco", "obrón", "ceguinho", "botico", "zero", "tripa gaiteira", "fonfom", "miaieiro", "mucumbuco", "boraco", "proa", "polgueiro", "forever", "cloaca", "urna", "gritador", "frango", "ueiro", "cano de escape", "pretinho", "rodinha", "x.p.t.o.", "zerinho", "subiador", "tripa oca", "fiofó", "elitório", "boca de caçapa", "canto escuro", "boréu", "cheiroso", "formiróide alvado", "parreco", "manhoso", "xambica", "sibasol", "apolônio", "fobilário", "bilé", "brioco", "roxim", "fresado", "anilha", "cagário", "vaso preto", "zé careta", "olho cego", "espoleta", "fuzil", "fioto", "foário", "orió", "bostoque", "futrico", "ilhó", "coliseu", "caneco", "roscofe", "forno", "botão", "disco", "farinheiro", "jolie", "fundo", "fundão", "cuovades", "fichinha", "zé de quinca", "canal dois", "cagador", "buzina", "vesúvio", "cego", "federais", "faguieiro", "zé zoada", "rosquete", "fim de regada", "ânus", "fiofó"]
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
