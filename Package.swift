// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YUCIHighPassSkinSmoothing",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "YUCIHighPassSkinSmoothing",
            targets: ["YUCIHighPassSkinSmoothing"]),
    ],
    dependencies: [
        .package(url: "https://github.com/k-ymmt/Vivid.git", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "YUCIHighPassSkinSmoothing",
            dependencies: [.product(name: "Vivid", package: "Vivid")],
            resources: [.process("Resources")],
        ),
    ]
)
