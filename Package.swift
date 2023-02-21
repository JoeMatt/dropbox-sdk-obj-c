// swift-tools-version:5.7

import PackageDescription

let package = Package(
    name: "dropbox-objc",
    defaultLocalization: "us",
    platforms: [
        .iOS(.v12),
        // .macOS(.v12),
        .tvOS(.v12),
        .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "dropbox-objc",
            targets: ["dropbox-objc"]
        ),
        .library(
            name: "dropbox-objc-static",
            type: .static,
            targets: ["dropbox-objc"]
        ),
        .library(
            name: "dropbox-objc-dynamic",
            type: .dynamic,
            targets: ["dropbox-objc"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "dropbox-objc",
            dependencies: [
            ],
            path: "Source/ObjectiveDropboxOfficial",
            publicHeadersPath: "Headers",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("CoreData")
            ]
        ),
		// .target(
		// 	name: "RoxasUIKit",
		// 	dependencies: [
		// 		"Roxas",
		// 		.target(name: "Roxas_iOS", condition: .when(platforms: [.iOS, .macCatalyst])),
		// 		.target(name: "Roxas_tvOS", condition: .when(platforms: [.tvOS]))
		// 	],
		// 	linkerSettings: [
		// 		.linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS, .macCatalyst])),
		// 		.linkedFramework("AppKit", .when(platforms: [.macOS])),
		// 		.linkedFramework("Cocoa", .when(platforms: [.macOS])),
		// 		.linkedFramework("Foundation"),
		// 		.linkedFramework("CoreData")
		// 	]
		// ),
        // .target(
        //     name: "Roxas_iOS",
		// 	linkerSettings: [
		// 		.linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS, .macCatalyst])),
		// 		.linkedFramework("Foundation"),
		// 		.linkedFramework("CoreData")
		// 	]
        // ),
        // .target(
        //     name: "Roxas_tvOS",
		// 	linkerSettings: [
		// 		.linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS, .macCatalyst])),
		// 		.linkedFramework("Foundation"),
		// 		.linkedFramework("CoreData")
		// 	]
        // ),
        // .testTarget(
        //     name: "RoxasTests",
        //     dependencies: [
		// 		"Roxas",
		// 		"RoxasUIKit"
		// 	]
        // )
    ],
	swiftLanguageVersions: [.v4_2, .v5]
)
