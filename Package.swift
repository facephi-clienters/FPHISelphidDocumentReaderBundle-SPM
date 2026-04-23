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
        .package(url: "git@github.com:facephi-clienters/FPHIRecognitionHelper-SPM.git", .upToNextMajor(from: "6.1.3")),
        .package(url: "git@github.com:facephi-clienters/FPHISelphidDocumentReader-SPM.git", .exactItem("3.0.0")),
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
        .binaryTarget(name: "selphidDocumentReaderBundle",
                        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/WIDGET/DocumentReader/FPHISelphidDocumentReaderBundle/3.0.0/selphidDocumentReaderBundle.zip",
                        checksum: "94ac2a9d8399a76eb8d9401993a042ae294e3697bb887688b89064ce880a3cca")
        
    ]
)
