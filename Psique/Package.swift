// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Psique",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        // Um projeto xtool deve ter exatamente um produto library: o app principal.
        .library(
            name: "Psique",
            targets: ["Psique"]
        ),
    ],
    targets: [
        .target(
            name: "Psique"
        ),
    ],
    // Modo Swift 5 evita erros de concorrência estrita num código ainda não compilado.
    swiftLanguageModes: [.v5]
)
