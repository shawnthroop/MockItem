import XCTest
@testable import MockItem

final class MockItemTests: XCTestCase {
    
    func testEquality() {
        let id = UUID()
        let text = "Hello, World!"
        
        let item1 = MockItem(id: id, value: text)
        let item2 = MockItem(id: id, value: text)
        XCTAssertEqual(item1, item2)
        
        let item3 = MockItem(id: UUID(), value: text)
        XCTAssertNotEqual(item1, item3)
        
        let item4 = MockItem(id: id, value: "Goodby, Universe?")
        XCTAssertNotEqual(item1, item3)
        XCTAssertNotEqual(item1, item4)
    }

    static var allTests = [
        ("testEquality", testEquality),
    ]
}
