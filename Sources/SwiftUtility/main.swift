import Foundation
import Basic
import Utility

do {
    // Hey Nicole! This version of `Process` lives in SwiftPM 0.3.0/Basic/Process.swift.
    // There's a class in Foundation that's also called `Process`. They have
    // similar functions but the one in SPM is way more useful.
    //
    // My question is this: If I ship this project as a command line utility
    // what do I need to do to make sure I include SwiftPM as a dependency?
    // Can I somehow bundle it inside of my executable?
    let process = Process(arguments: ["ls", "-l", "/Applications"])
    try process.launch()
    let result = try process.waitUntilExit()
    let output = try result.utf8Output()
    print(output)
} catch {
    print("Error while reading the Applications directory")
}
