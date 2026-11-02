import SwiftUI

struct FichamentosView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        NavigationStack {
            List {
                ForEach($store.fichamentos) { $f in
                    NavigationLink {
                        FichamentoEditor(f: $f)
                    } label: {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(f.title.isEmpty ? "Sem título" : f.title)
                            Text(f.updated, style: .date)
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .onDelete { store.fichamentos.remove(atOffsets: $0) }
            }
            .overlay {
                if store.fichamentos.isEmpty {
                    Text("Toque em + para criar um fichamento.")
                        .foregroundStyle(.secondary)
                }
            }
            .navigationTitle("Fichamentos")
            .toolbar {
                Button { _ = store.addFichamento() } label: { Image(systemName: "plus") }
            }
        }
    }
}

struct FichamentoEditor: View {
    @Binding var f: Fichamento

    var body: some View {
        Form {
            Section("Título") {
                TextField("Título do fichamento", text: $f.title)
            }
            Section("Referência (ABNT)") {
                TextField("SOBRENOME, Nome. Título. Cidade: Editora, ano.", text: $f.reference, axis: .vertical)
            }
            Section("Resumo") {
                TextField("Ideia central do texto", text: $f.summary, axis: .vertical)
                    .lineLimit(3...12)
            }
            Section("Citações") {
                ForEach($f.quotes) { $q in
                    VStack(alignment: .leading) {
                        TextField("Trecho", text: $q.text, axis: .vertical)
                        TextField("Página", text: $q.page)
                            .font(.footnote)
                    }
                }
                .onDelete { f.quotes.remove(atOffsets: $0) }

                Button("Adicionar citação") { f.quotes.append(Quote()) }
            }
            Section("Comentários") {
                TextField("Sua leitura, ligações com outros autores", text: $f.comments, axis: .vertical)
                    .lineLimit(3...12)
            }
        }
        .navigationTitle("Fichamento")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ShareLink(item: f.exportText)
        }
        .onDisappear { f.updated = Date() }
    }
}
