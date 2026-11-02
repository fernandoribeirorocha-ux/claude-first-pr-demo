import Foundation

enum Author: String, CaseIterable, Codable, Identifiable {
    case freud = "Freud"
    case klein = "Klein"
    case winnicott = "Winnicott"
    case lacan = "Lacan"
    case bion = "Bion"

    var id: String { rawValue }
}

/// Verbete de estudo. Conteúdo fixo, embutido no app.
struct Concept: Identifiable, Hashable {
    let id: String
    let author: Author
    let name: String
    let summary: String
    let work: String
}

/// Cartão de revisão (algoritmo SM-2).
struct Card: Identifiable, Codable, Hashable {
    var id = UUID()
    var front: String
    var back: String
    var source: String
    var ease: Double = 2.5
    var interval: Int = 0
    var repetitions: Int = 0
    var due: Date = Date()
}

struct Quote: Identifiable, Codable, Hashable {
    var id = UUID()
    var text: String = ""
    var page: String = ""
}

struct Fichamento: Identifiable, Codable, Hashable {
    var id = UUID()
    var title: String = ""
    var reference: String = ""
    var summary: String = ""
    var quotes: [Quote] = []
    var comments: String = ""
    var updated: Date = Date()

    /// Texto simples para compartilhar ou colar em outro documento.
    var exportText: String {
        var s = title.isEmpty ? "Fichamento" : title
        s += "\n\n"
        if !reference.isEmpty { s += "Referência: \(reference)\n\n" }
        if !summary.isEmpty { s += "Resumo:\n\(summary)\n\n" }
        if !quotes.isEmpty {
            s += "Citações:\n"
            for q in quotes {
                let page = q.page.isEmpty ? "" : " (p. \(q.page))"
                s += "“\(q.text)”\(page)\n"
            }
            s += "\n"
        }
        if !comments.isEmpty { s += "Comentários:\n\(comments)\n" }
        return s
    }
}
