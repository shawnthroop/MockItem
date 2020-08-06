import XCTest
@testable import MockItem

final class MockItemTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MockItem().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
