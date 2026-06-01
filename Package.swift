// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPHISelphidDocumentReaderBundle-SPM",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FPHISelphidDocumentReaderBundle-SPM",
            targets: ["FPHISelphidDocumentReaderBundle-SPM", "selphidDocumentReaderBundle"]),
    ],
     dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "3.27.4")),
        .package(url: "https://github.com/facephi-clienters/FPHISelphidDocumentReader-SPM.git", .exactItem("2.1.2")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FPHISelphidDocumentReaderBundle-SPM",
            dependencies: [
                "selphidDocumentReaderBundle", 
                "FPHISelphidDocumentReader-SPM", 
                .product(
                    name: "FPHIRecognitionHelper-SPM",
                    package: "FPHIRecognitionHelper-SPM"
                )
            ]
        ),
        .binaryTarget(name: "selphidDocumentReaderBundle", url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHISelphidDocumentReaderBundle/2.1.2/selphidDocumentReaderBundle.zip",
            checksum: "616093a8aaa60b674f4e45108836ed177a0c341543e4ea93e1667f03da2d89ac") 
    ]
)
