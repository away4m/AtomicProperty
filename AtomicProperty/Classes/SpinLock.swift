//
//  SpinLock.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

@available(iOS 10.0, *)
public final class SpinLock: Lock {
    public init() {}
    
    private var unfairLock = os_unfair_lock_s()
    
    public func lock<T>(_ execute: () -> T) -> T {
        os_unfair_lock_lock(&unfairLock)
        return execute()
    }
    
    public func unlock() {
        os_unfair_lock_unlock(&unfairLock)
    }
}
