//
//  Atomic.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

@propertyWrapper
public final class Atomic<Value> {
    let atomic: AtomicProperty<Value>
    
    public init(wrappedValue: AtomicProperty<Value>, lock: Lock = NSLock()) {
        atomic = wrappedValue
        atomic.lock = lock
    }
    
    public init(value: Value, lock: Lock = NSLock()) {
        atomic = AtomicProperty<Value>(value: value, lock: lock)
    }
    
    public var wrappedValue: AtomicProperty<Value> {
        atomic
    }
}
