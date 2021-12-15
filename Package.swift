// swift-tools-version: 5.5

// WARNING:
// This file is automatically generated.
// Do not edit it by hand because the contents will be replaced.

import PackageDescription
import AppleProductTypes

let package = Package(
    name: "Console Pad",
    defaultLocalization: "en",
    platforms: [
        .iOS("15.2")
    ],
    products: [
        .iOSApplication(
            name: "Console Pad",
            targets: ["ConsolePad"],
            bundleIdentifier: "xyz.kebo.ConsolePad",
            teamIdentifier: "X4678G5DL2",
            displayVersion: "1.0",
            bundleVersion: "2",
            iconAssetName: "AppIcon",
            accentColorAssetName: "AccentColor",
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/siteline/SwiftUI-Introspect", "0.1.3"..<"0.2.0")
    ],
    targets: [
        .executableTarget(
            name: "ConsolePad",
            dependencies: [
                .product(name: "Introspect", package: "SwiftUI-Introspect")
            ]
        )
    ]
)
