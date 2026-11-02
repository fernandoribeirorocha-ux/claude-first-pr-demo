import Foundation

/// Nota dada pelo usuário ao revisar um cartão (escala SM-2, 0 a 5).
enum Grade: Int, CaseIterable {
    case again = 1
    case hard = 3
    case good = 4
    case easy = 5

    var label: String {
        switch self {
        case .again: return "Errei"
        case .hard: return "Difícil"
        case .good: return "Bom"
        case .easy: return "Fácil"
        }
    }
}

extension Card {
    /// Algoritmo SM-2 (Wozniak, 1987/1990), versão clássica.
    mutating func review(_ grade: Grade, now: Date = Date()) {
        if grade == .again {
            repetitions = 0
            interval = 1
        } else {
            switch repetitions {
            case 0: interval = 1
            case 1: interval = 6
            default: interval = max(1, Int((Double(interval) * ease).rounded()))
            }
            repetitions += 1

            let q = Double(grade.rawValue)
            ease = max(1.3, ease + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02)))
        }
        due = Calendar.current.date(byAdding: .day, value: interval, to: now) ?? now
    }
}
