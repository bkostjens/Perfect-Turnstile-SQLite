// Generated automatically by Perfect Assistant Application
// Date: 2016-12-08 16:02:13 +0000
import PackageDescription
let package = Package(
    name: "PerfectTurnstileSQLite",
    targets: [],
    dependencies: [
        .Package(url: "https://github.com/SwiftORM/SQLite-StORM.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/PerfectlySoft/Perfect-HTTPServer.git", majorVersion: 2, minor: 0),
        .Package(url: "https://github.com/PerfectlySoft/Perfect-Mustache.git", majorVersion: 2, minor: 0),
        .Package(url: "https://github.com/iamjono/SwiftString.git", majorVersion: 1, minor: 0),
        .Package(url: "https://github.com/iamjono/SwiftRandom.git", majorVersion: 0, minor: 2),
        .Package(url: "https://github.com/PerfectSideRepos/Turnstile-Perfect.git", majorVersion: 2, minor: 0),
    ]
)