//
//  Vocabulary.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 09/04/2021.
//

import SwiftUI

typealias Pickable = CaseIterable & Identifiable & Hashable & CustomStringConvertible

enum Vocabulary: Int, Pickable {
    // swiftlint:disable identifier_name
    var id: Self { self }

    var description: String {
        switch self {
        case .cy:
            return "Doente das Parte"
        case .parrot:
            return "Dead Parrot"
        }
    }

    // MARK: - These are the available dicts
    // swiftlint:disable line_length identifier_name
    case cy, parrot

    var words: [String] {
        switch self {
        case .cy:
            return ["feijoeiro", "tronco do ser humano", "finar mais derradeiro", "rosquinha enfezada", "rosca", "as parte", "bocado arengueiro", "fiofó", "bufante", "frescó", "lorto", "apito", "brote", "bozó", "furico", "fedegoso", "piscante", "pelado", "boga", "fosquete", "frinfra", "sedém", "zueiro", "ficha", "vintém", "ás de copa", "foba", "oiti", "oi de porco", "ané de couro", "cagueiro", "girassol", "goiaba", "roseta", "rosa", "rabada", "boto", "zero", "miaieiro", "nó dos fundo", "buzeco", "sonoro", "pregueado", "rabichol", "furo", "argola", "ané de ouro", "ané de sola", "boca de véia", "zangado", "aro treze", "peidante", "zé de boga", "danado", "boca da tarraqueta", "quinca", "dentrol", "zé besquete", "carrapeta", "rosca", "rosquinha", "tareco", "frasco", "obrón", "ceguinho", "botico", "zero", "tripa gaiteira", "fonfom", "miaieiro", "mucumbuco", "boraco", "proa", "polgueiro", "forever", "cloaca", "urna", "gritador", "frango", "ueiro", "cano de escape", "pretinho", "rodinha", "x.p.t.o.", "zerinho", "subiador", "tripa oca", "fiofó", "elitório", "boca de caçapa", "canto escuro", "boréu", "cheiroso", "formiróide alvado", "parreco", "manhoso", "xambica", "sibasol", "apolônio", "fobilário", "bilé", "brioco", "roxim", "fresado", "anilha", "cagário", "vaso preto", "zé careta", "olho cego", "espoleta", "fuzil", "fioto", "foário", "orió", "bostoque", "futrico", "ilhó", "coliseu", "caneco", "roscofe", "forno", "botão", "disco", "farinheiro", "jolie", "fundo", "fundão", "cuovades", "fichinha", "zé de quinca", "canal dois", "cagador", "buzina", "vesúvio", "cego", "federais", "faguieiro", "zé zoada", "rosquete", "fim de regada", "ânus", "fiofó"]
        case .parrot:
            return ["is dead", "is deceased", "is demised", "has passed on", "is no more", "has ceased to be", "expired", "has gone to meet 'is maker", "is a stiff", "bereft of life", "rests in peace", "is pushing up the daisies", "his metabolic processes are now 'istory", "is off the twig", "kicked the bucket", "shuffled off 'is mortal coil", "ran down the curtain", "joined the bleedin' choir invisible", "pegged out", "cashed in his chips", "succumbed", "has gone", "has departed", "has fallen", "died away", "parted from life", "has gone on a journey", "totally died off", "with its spirit sent forth", "completely scattered", "glided away", "went out of this world", "fared", "left", "parted", "is gathered to his fathers", "went over to the majority", "went home", "passed to one's reward", "launched into eternity", "went to glory", "meet his Maker", "got his call", "slipped his cable", "kicked the bucket", "given up the ghost", "his silver cord is loosed", "has taken the ferry", "paid his debt to nature", "went up the flume", "hand in his accounts", "relented", "unbreathed", "transpasses", "lost his breath", "stiffened", "dropped short", "stepped out", "walked", "perched", "knocked over", "shuffled off this mortal coil", "croaked", "kissed off", "yielded the ghost", "expired", "passed away", "is off the hooks", "snuffed it", "copped it", "is off it", "creased it", "has had it", "IS AN EX-PARROT!"]
        }
    }
}
