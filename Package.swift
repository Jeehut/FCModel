// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "FCModel",
    platforms: [.macOS(.v10_10), .iOS(.v9)],
    products: [.library(name: "FCModel", targets: ["FCModel"])],
    dependencies: [
      .package(name: "FMDB", url: "https://github.com/Jeehut/fmdb.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "FCModel",
            dependencies: ["FMDB"],
            path: "FCModel",
            exclude: ["Info.plist"],
            publicHeadersPath: ""
        )
    ]
)
