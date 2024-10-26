// swift-tools-version: 5.10

import PackageDescription

let package = Package(
  name: "FunctionalitySwiftEnhancement",
  platforms: [.iOS(.v15)],
  products: [
    .library(
      name: "FunctionalitySwiftEnhancement",
      targets: ["FunctionalitySwiftEnhancement"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SimplyDanny/SwiftLintPlugins", revision: "0.57.0"),
  ],
  targets: [
    .target(
      name: "FunctionalitySwiftEnhancement",
      plugins: [.plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")]
    ),
    .testTarget(
      name: "FunctionalitySwiftEnhancementTests",
      dependencies: ["FunctionalitySwiftEnhancement"],
      plugins: [.plugin(name: "SwiftLintBuildToolPlugin", package: "SwiftLintPlugins")]
    ),
  ]
)
