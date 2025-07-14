// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MRMailSDK",
    defaultLocalization: "ru",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MRMailSDK",
            targets: ["MRMailSDK"]
        ),
    ],
    targets: [
        .target(
            name: "MRMailSDK",
            path: "mr-mail-sdk/sources"
            publicHeadersPath: ".",
              cSettings: [
                .headerSearchPath("core"),
                .headerSearchPath("utils"),
                .headerSearchPath("ui"),
                .headerSearchPath("mail-sign-in")
            ]
        )
    ]
)
