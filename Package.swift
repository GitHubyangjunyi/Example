// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Example",
    products: [
        .library(
            name: "Example",
            targets: ["Example"]
        ),
    ],
	traits: [
		"Foo",
		.trait(name: "Bar",
			  enabledTraits: [
				"Foo"// Bar 特性开启时也启用 Foo 特性
			  ]),
		.trait(name: "FooBar", enabledTraits: [
			"Foo",
			"Bar",
		]),
		.default(enabledTraits: ["Foo"])// 默认启用 Foo 特性
	],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Example"
        ),
        .testTarget(
            name: "ExampleTests",
            dependencies: ["Example"]
        ),
    ]
)
