// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Loom",
    platforms:[.macOS(.v13)],
    products: [
        .library(
            name: "Loom",
            targets: ["Loom"]),
    ],
    dependencies: [
        .package(url: "https://www.github.com/apple/swift-argument-parser", from: "1.5.0"),
    ],
    targets: [
        .target(name: "Loom", dependencies: [], path: "Sources/Loom"),
        .executableTarget(name: "LoomCLI", dependencies: [
            .product(name: "ArgumentParser", package: "swift-argument-parser"),
            .target(name: "Loom")
        ], path: "Sources/LoomCLI")
    ]
)
