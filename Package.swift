// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

// version 1.0.0
let package = Package(
    name: "CricHeroes-AnyManagerMediationSDK",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CricHeroes-AnyManagerMediationSDK",
            targets: ["CricHeroes-AnyManagerMediationSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AnyMindG/CricHeroes-AnyMindAdSDKs.git", from: "1.0.0"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", from: "11.13.0"),
        
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "CricHeroes-AnyManagerMediationSDK",
            dependencies: [
                .product(name: "AnyManagerMediation", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "AppLovinSDK", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "GoogleMobileAdsMediationAppLovin", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "IASDKCore", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "GoogleMobileAdsMediationFyber", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "UnityAds", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "GoogleMobileAdsMediationUnity", package: "CricHeroes-AnyMindAdSDKs"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                ],
            linkerSettings: [
                .linkedFramework("WebKit"),
                .linkedFramework("AdSupport"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreGraphics"),
                .linkedFramework("CoreMedia"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("StoreKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedFramework("UIKit"),
                .linkedFramework("AudioToolbox"),
                .linkedFramework("CFNetwork"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("QuartzCore"),
                
            ]
        
        ),
        .testTarget(
            name: "CricHeroes-AnyManagerMediationSDKTests",
            dependencies: ["CricHeroes-AnyManagerMediationSDK"]
        ),
    ]
)
