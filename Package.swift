// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "NMapsMapSPM",
	platforms: [.iOS(.v15)],
	products: [
		// Products define the executables and libraries a package produces, making them visible to other packages.
		.library(
			name: "NMapsMapSPM",
			targets: ["NMapsMapSPM"]
		),
	],
	targets: [
		// Targets are the basic building blocks of a package, defining a module or a test suite.
		// Targets can depend on other targets in this package and products from dependencies.
		.binaryTarget(
			name: "NMapsGeometry",
			path: "./Frameworks/NMapsGeometry/framework/NMapsGeometry.xcframework"
		),
		.binaryTarget(
			name: "NMapsMap",
			path: "./Frameworks/NMapsMap/framework/NMapsMap.xcframework"
		),
		.target(
			name: "NMapsMapSPM",
			dependencies: [
				"NMapsGeometry",
				"NMapsMap"
			]
		)
	]
)
