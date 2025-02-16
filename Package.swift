// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Loom",
    platforms:[.macOS(.v12)],
    products: [
        .library(
            name: "Loom",
            targets: ["Loom"]),
    ],
    dependencies: [
    ],
    targets: [
    .target(name: "Loom")
    ]
)