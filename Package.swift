// swift-tools-version:4.0

import PackageDescription

let pkg = Package(name: "ProcedureKit")

pkg.products = [
    .library(name: "ProcedureKit", type: .dynamic, targets: ["ProcedureKit", "ProcedureKitNetwork", "ProcedureKitLocation"])
]

pkg.targets = [
    .target(name: "ProcedureKit"),
    .target(name: "ProcedureKitLocation", dependencies: ["ProcedureKit"]),
    .target(name: "ProcedureKitNetwork", dependencies: ["ProcedureKit"]),
    .target(name: "TestingProcedureKit", dependencies: ["ProcedureKit"]),
    .testTarget(name: "ProcedureKitTests", dependencies: ["ProcedureKit", "TestingProcedureKit"]),
    .testTarget(name: "ProcedureKitStressTests", dependencies: ["ProcedureKit", "TestingProcedureKit"]),
    .testTarget(name: "ProcedureKitLocationTests", dependencies: ["ProcedureKitLocation", "TestingProcedureKit"]),
    .testTarget(name: "ProcedureKitNetworkTests", dependencies: ["ProcedureKitNetwork", "TestingProcedureKit"]),
]
