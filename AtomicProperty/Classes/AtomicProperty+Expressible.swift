//
//  AtomicProperty+Expressible.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

extension AtomicProperty: ExpressibleByIntegerLiteral where Value == Int {
    public convenience init(integerLiteral value: Int) {
        self.init(value: value)
    }
}

extension AtomicProperty: ExpressibleByFloatLiteral where Value == Double {
    public convenience init(floatLiteral value: Double) {
        self.init(value: value)
    }
}

extension AtomicProperty: ExpressibleByStringLiteral, ExpressibleByUnicodeScalarLiteral, ExpressibleByExtendedGraphemeClusterLiteral where Value == String {
    public convenience init(stringLiteral value: String) {
        self.init(value: value)
    }
    
    public convenience init(extendedGraphemeClusterLiteral value: String) {
        self.init(value: value)
    }
    
    public convenience init(unicodeScalarLiteral value: String) {
        self.init(value: value)
    }
}

extension AtomicProperty: CustomStringConvertible where Value: CustomStringConvertible {
    public var description: String { value.description }
}
