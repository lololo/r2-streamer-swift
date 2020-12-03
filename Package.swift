// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "R2Streamer",
    platforms: [
        .macOS(.v10_10), .iOS(.v12), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "R2Streamer", targets: ["R2Streamer"]),
    ],
    dependencies: [
        .package(url:"https://github.com/lololo/r2-shared-swift.git", .branch("develop")),
        .package(url:"https://github.com/lololo/minizip.git", .branch("master")),
        .package(url: "https://github.com/cezheng/Fuzi.git", from: "3.1.2"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.3.8"),
        .package(url: "https://github.com/lololo/GCDWebServer.git", .branch("master"))
    ],
    targets: [
        .target(name: "R2Streamer",
                dependencies: [ "R2Shared",
                                "Minizip",
                                "Fuzi",
                                "CryptoSwift",
                                "GCDWebServer"],
                path: "r2-streamer-swift"
        ),
    ]
)

