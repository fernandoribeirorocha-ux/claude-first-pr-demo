import Foundation
import SwiftUI

/// Persistência simples em JSON no diretório Documents.
/// Evita SwiftData/CoreData, que dependem de macros e frameworks do Xcode.
@MainActor
final class Store: ObservableObject {
    @Published var cards: [Card] = [] { didSet { save() } }
    @Published var fichamentos: [Fichamento] = [] { didSet { save() } }

    private struct Snapshot: Codable {
        var cards: [Card]
        var fichamentos: [Fichamento]
    }

    private let url: URL

    init() {
        let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        self.url = dir.appendingPathComponent("psique.json")

        if let data = try? Data(contentsOf: url),
           let snap = try? JSONDecoder().decode(Snapshot.self, from: data) {
            self.cards = snap.cards
            self.fichamentos = snap.fichamentos
        } else {
            // Primeira execução: um cartão por verbete.
            self.cards = SeedData.concepts.map { c in
                Card(
                    front: "\(c.name) (\(c.author.rawValue))",
                    back: c.summary,
                    source: c.work
                )
            }
        }
    }

    var dueCards: [Card] {
        let now = Date()
        return cards.filter { $0.due <= now }.sorted { $0.due < $1.due }
    }

    func review(_ id: Card.ID, _ grade: Grade) {
        guard let i = cards.firstIndex(where: { $0.id == id }) else { return }
        cards[i].review(grade)
    }

    func addCard(front: String, back: String, source: String) {
        cards.append(Card(front: front, back: back, source: source))
    }

    func addFichamento() -> Fichamento.ID {
        let f = Fichamento()
        fichamentos.insert(f, at: 0)
        return f.id
    }

    private func save() {
        let snap = Snapshot(cards: cards, fichamentos: fichamentos)
        guard let data = try? JSONEncoder().encode(snap) else { return }
        try? data.write(to: url, options: .atomic)
    }
}
