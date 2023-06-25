// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOgg",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "COgg",
            targets: ["COgg"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "COgg",
            dependencies: [],
            exclude: [
                "cmake",
                "doc",
                "include/Makefile.am",
                "include/ogg/Makefile.am",
                "include/ogg/config_types.h.in",
                "src/Makefile.am",
                "win32",
                "appveyor.yml",
                "AUTHORS",
                "autogen.sh",
                "CHANGES",
                "CMakeLists.txt",
                "configure.ac",
                "COPYING",
                "libogg.spec.in",
                "Makefile.am",
                "ogg-uninstalled.pc.in",
                "ogg.m4",
                "ogg.pc.in",
                "README.md",
                "releases.sha2"
            ],
            publicHeadersPath: "include",
            cSettings: [
                // silence "Implicit conversion loses integer precision" warning.
                .unsafeFlags(["-w"])
            ])
    ]
)
