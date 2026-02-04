// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "Paper",
    targets: [
        .systemLibrary(
            name: "CGtk3",
            pkgConfig: "gtk+-3.0",
            providers: [
                .brew(["gtk+3"]),
                .apt(["libgtk-3-dev"])
            ]
        ),
        .executableTarget(
            name: "Paper",
            dependencies: ["CGtk3"]
        )
    ]
)
