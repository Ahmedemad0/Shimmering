// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Shimmering",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "Shimmering",
            targets: ["Shimmering"]),
    ],
    dependencies: [],
    targets: [
        
        .target(
            name: "Shimmering",
            dependencies: []),
    ]
)
