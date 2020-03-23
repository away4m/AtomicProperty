//
//  NoLock.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation
public final class NoLock: Lock {
    public init() {}
    
    public func lock<T>(_ execute: () -> T) -> T {
        execute()
    }
    
    public func unlock() {}
}
