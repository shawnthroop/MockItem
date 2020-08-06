//
//  MockItem.swift
//  Created by Shawn Throop on 06.08.20.
//

import Foundation

public struct MockItem<ID: Hashable, T> : Identifiable {
    public var id: ID
    public var value: T
    
    public init(id: ID, value: T) {
        self.id = id
        self.value = value
    }
}


extension MockItem: Hashable where T: Hashable {}
extension MockItem: Equatable where T: Equatable {}


extension Collection {
    
    public func asMockItems<ID: Hashable>(makeID: (Element) throws -> ID) rethrows -> [MockItem<ID, Element>] {
        try map { .init(id: try makeID($0), value: $0) }
    }
    
    public func asMockItems() -> [MockItem<UUID, Element>] {
        asMockItems(makeID: { _ in UUID() })
    }
}
