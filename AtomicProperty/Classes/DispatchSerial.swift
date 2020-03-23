//
//  DispatchSerial.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

public final class DispatchSerial: Lock {
    private let queue = DispatchQueue(label: "Atomic serial queue")
    
    public init() {
        
    }
    public func lock<T>(_ execute: () -> T) -> T {
        queue.sync { execute() }
    }
    
    public func unlock() {}
}
