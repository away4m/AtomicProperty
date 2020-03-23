//
//  File.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

extension NSLock: Lock {
    public func lock<T>(_ execute: () -> T) -> T {
        lock()
        return execute()
    }
}
