//
//  Lock.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation

public protocol Lock {
    func lock<T>(_ execute: () -> T) -> T
    func unlock()
}
