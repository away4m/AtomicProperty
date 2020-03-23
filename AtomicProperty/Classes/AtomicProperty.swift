//
//  AtomicProperty.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

public final class AtomicProperty<Value> {
    private var _value: Value
    var lock: Lock
    
    public init(value: Value) {
        _value = value
        lock = NSLock()
    }
    
    public init(value: Value, lock: Lock) {
        _value = value
        self.lock = lock
    }
    
    public var value: Value {
        defer { lock.unlock() }
        return lock.lock {
            _value
        }
    }
    
    public func mutate(_ transform: (inout Value) -> Value) {
        defer { lock.unlock() }
        lock.lock {
            _value = transform(&_value)
        }
    }
}
