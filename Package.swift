// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "xcstrings-tool")
            ]
        ),
        .binaryTarget(
            name: "xcstrings-tool",
            url: "https://github.com/kavars/xcstrings-tool/releases/download/1.0.1/xcstrings-tool.artifactbundle.zip",
            checksum: "2152e2a21fab8a8c02f49db25b3aee3150972736df51ea9d20bc83fbb3ab6b28"
        )
    ]
)
