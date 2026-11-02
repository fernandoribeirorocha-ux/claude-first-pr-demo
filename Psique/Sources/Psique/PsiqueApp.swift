import SwiftUI

@main
struct PsiqueApp: App {
    @StateObject private var store = Store()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(store)
        }
    }
}

struct RootView: View {
    @EnvironmentObject var store: Store

    var body: some View {
        TabView {
            ConceptsView()
                .tabItem { Label("Conceitos", systemImage: "books.vertical") }

            ReviewView()
                .tabItem { Label("Revisão", systemImage: "rectangle.stack") }
                .badge(store.dueCards.count)

            FichamentosView()
                .tabItem { Label("Fichamentos", systemImage: "doc.text") }

            CompareView()
                .tabItem { Label("Comparar", systemImage: "rectangle.split.3x1") }
        }
    }
}
