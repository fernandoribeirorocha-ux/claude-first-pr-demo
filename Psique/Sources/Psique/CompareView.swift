import SwiftUI

struct CompareView: View {
    @State private var themeID = SeedData.themes[0].id

    private var theme: SeedData.Theme {
        SeedData.themes.first { $0.id == themeID } ?? SeedData.themes[0]
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Picker("Tema", selection: $themeID) {
                        ForEach(SeedData.themes) { t in
                            Text(t.title).tag(t.id)
                        }
                    }
                    .pickerStyle(.menu)

                    ForEach(Author.allCases) { author in
                        if let line = theme.lines[author] {
                            VStack(alignment: .leading, spacing: 4) {
                                Text(author.rawValue)
                                    .font(.headline)
                                Text(line)
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            Divider()
                        }
                    }

                    Text("Leitura-resumo para estudo. Verifique nos textos originais.")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                .padding()
            }
            .navigationTitle("Comparar autores")
        }
    }
}
