// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SRXRequestTool",
    
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SRXRequestTool",
            targets: ["SRXRequestTool"]),
    ],

    targets: [
        .target(
            name: "SRXRequestTool",
            dependencies: [],
            path: ".",
            exclude: [],
            sources: ["Source"],
            resources: nil,
            publicHeadersPath: nil
        )
    ]
)
