// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TestSPM",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(name: "AWSAPIGateway", targets: ["AWSAPIGateway"]),
        .library(name: "AWSCognitoIdentityProvider", targets: ["AWSCognitoIdentityProvider"]),
        .library(name: "AWSCognitoIdentityProviderASF", targets: ["AWSCognitoIdentityProviderASF"]),
        .library(name: "AWSCore", targets: ["AWSCore"])
    ],
    targets: [
        .binaryTarget(name: "AWSAPIGateway", path: "AWSAPIGateway.xcframework"),
        .binaryTarget(name: "AWSCognitoIdentityProvider", path: "AWSCognitoIdentityProvider.xcframework"),
        .binaryTarget(name: "AWSCognitoIdentityProviderASF", path: "AWSCognitoIdentityProviderASF.xcframework"),
        .binaryTarget(name: "AWSCore", path: "AWSCore.xcframework")
    ]
)
