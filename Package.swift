// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "IQTextInputViewNotification",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "IQTextInputViewNotification",
            targets: ["IQTextInputViewNotification"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/hackiftekhar/IQKeyboardCore.git", from: "1.0.8"),
    ],
    targets: [
        .target(name: "IQTextInputViewNotification",
                dependencies: ["IQKeyboardCore"],
                path: "IQTextInputViewNotification",
                resources: [
                    .copy("Assets/PrivacyInfo.xcprivacy")
                ],
                linkerSettings: [
                    .linkedFramework("Combine"),
                    .linkedFramework("UIKit")
                ]
               )
    ]
)
