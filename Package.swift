// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "hair",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "hair",
            targets: [
                "hair",
                "hair_sdk_core",
                "hair_effect_player",
                "hair_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "hair",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/hair.zip",
            checksum: "6f573c8396373f4bf770896fffc51c7460cfcd5de6293a6a1ae23f0dcddd7675"
        ),
        .target(
            name: "hair_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "hair_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "hair_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
