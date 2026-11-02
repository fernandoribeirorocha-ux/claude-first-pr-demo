import SwiftUI

struct ReviewView: View {
    @EnvironmentObject var store: Store
    @State private var showAnswer = false
    @State private var adding = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                if let card = store.dueCards.first {
                    Text("\(store.dueCards.count) para revisar")
                        .font(.caption)
                        .foregroundStyle(.secondary)

                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            Text(card.front)
                                .font(.title3.bold())
                            if showAnswer {
                                Divider()
                                Text(card.back)
                                Text(card.source)
                                    .font(.footnote)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    }

                    if showAnswer {
                        HStack {
                            ForEach(Grade.allCases, id: \.self) { g in
                                Button(g.label) {
                                    store.review(card.id, g)
                                    showAnswer = false
                                }
                                .buttonStyle(.borderedProminent)
                            }
                        }
                        .padding(.bottom)
                    } else {
                        Button("Mostrar resposta") { showAnswer = true }
                            .buttonStyle(.borderedProminent)
                            .padding(.bottom)
                    }
                } else {
                    Spacer()
                    Image(systemName: "checkmark.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.secondary)
                    Text("Nada para revisar agora.")
                    Spacer()
                }
            }
            .navigationTitle("Revisão")
            .toolbar {
                Button { adding = true } label: { Image(systemName: "plus") }
            }
            .sheet(isPresented: $adding) { AddCardView() }
        }
    }
}

struct AddCardView: View {
    @EnvironmentObject var store: Store
    @Environment(\.dismiss) private var dismiss
    @State private var front = ""
    @State private var back = ""
    @State private var source = ""

    var body: some View {
        NavigationStack {
            Form {
                Section("Pergunta") {
                    TextField("Frente do cartão", text: $front, axis: .vertical)
                }
                Section("Resposta") {
                    TextField("Verso do cartão", text: $back, axis: .vertical)
                }
                Section("Fonte") {
                    TextField("Autor, obra, ano, página", text: $source, axis: .vertical)
                }
            }
            .navigationTitle("Novo cartão")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancelar") { dismiss() }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Salvar") {
                        store.addCard(front: front, back: back, source: source)
                        dismiss()
                    }
                    .disabled(front.isEmpty || back.isEmpty)
                }
            }
        }
    }
}
