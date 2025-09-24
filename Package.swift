// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "eSpeakNGLib",
    platforms: [
      .iOS(.v18), .macOS(.v15)
    ],
  products: [
    .library(
      name: "eSpeakNGLib",
      type: .dynamic,
      targets: ["eSpeakNGLib"]
    ),
  ],
  targets: [
    .target(
      name: "eSpeakNGLib",
      dependencies: ["ESpeakNG"]
    ),
    .binaryTarget(
      name: "ESpeakNG",
      path: "Frameworks/ESpeakNG.xcframework"
    ),
    .testTarget(
      name: "eSpeakNGTests",
      dependencies: ["eSpeakNGLib"]
    ),
  ]
)
