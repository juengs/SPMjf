import XCTest
@testable import Atlas

final class AtlasTests: XCTestCase {
//    func testExample() {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct
//        // results.
//        XCTAssertEqual(Atlas().text, "Hello, World!")
//    }
//
//
//    static var allTests = [
//        ("testExample", testExample),
//    ]
    
    //ADD:
    func testAustria() {
        XCTAssertEqual(Country(code: "AT").emojiFlag, "\u{1f1e6}\u{1f1f9}")
    }
    
    func testTurkey() {
        XCTAssertEqual(Country(code: "TR").emojiFlag, "\u{1f1f9}\u{1f1f7}")
    }
    
    func testUnitedStates() {
        XCTAssertEqual(Country(code: "US").emojiFlag, "\u{1f1fa}\u{1f1f8}")
    }
}

// extend
extension AtlasTests {
    static var allTests : [(String, (AtlasTests) -> () throws -> Void)] {
        return [
            ("testAustria", testAustria),
            ("testTurkey", testTurkey),
            ("testUnitedStates", testUnitedStates)
        ]
}
}
