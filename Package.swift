// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "ReactNativeBridge",
    platforms: [
        .iOS(.v16)
    ],
    products: [
        .library(
            name: "ReactNativeBridge",
            targets: ["ReactNativeBridge"]
        )
    ],
    targets: [
        .target(
            name: "ReactNativeBridge",
            dependencies: [
                "myappbrownfield",
                "hermesvm"
            ],
            path: "Sources/ReactNativeBridge"
        ),
        .binaryTarget(
            name: "myappbrownfield",
            path: "Frameworks/myappbrownfield.xcframework"
        ),
        .binaryTarget(
            name: "hermesvm",
            path: "Frameworks/hermesvm.xcframework"
        )
    ]
)
