import SwiftUI

struct ConceptsView: View {
    @State private var query = ""

    private var filtered: [Concept] {
        let q = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !q.isEmpty else { return SeedData.concepts }
        return SeedData.concepts.filter {
            $0.name.localizedCaseInsensitiveContains(q)
                || $0.summary.localizedCaseInsensitiveContains(q)
                || $0.author.rawValue.localizedCaseInsensitiveContains(q)
        }
    }

    var body: some View {
        NavigationStack {
            List {
                ForEach(Author.allCases) { author in
                    let items = filtered.filter { $0.author == author }
                    if !items.isEmpty {
                        Section(author.rawValue) {
                            ForEach(items) { c in
                                NavigationLink(c.name) { ConceptDetail(concept: c) }
                            }
                        }
                    }
                }
            }
            .searchable(text: $query, prompt: "Buscar conceito ou autor")
            .navigationTitle("Conceitos")
        }
    }
}

struct ConceptDetail: View {
    let concept: Concept

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(concept.author.rawValue)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Text(concept.summary)
                    .font(.body)
                VStack(alignment: .leading, spacing: 4) {
                    Text("Obra de referência")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text(concept.work)
                }
                Text("Resumo didático. Confirme no texto original antes de citar em trabalho acadêmico.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
        .navigationTitle(concept.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}
