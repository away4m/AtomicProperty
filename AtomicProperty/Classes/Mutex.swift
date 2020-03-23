//
//  Mutex.swift
//  AtomicProperty
//
//  Created by ALI KIRAN on 23.03.20.
//

import Foundation
public final class Mutex: Lock {
    public init() {}
    
    private var mutex: pthread_mutex_t = {
        var mutex = pthread_mutex_t()
        pthread_mutex_init(&mutex, nil)
        return mutex
    }()
    
    public func lock<T>(_ execute: () -> T) -> T {
        pthread_mutex_lock(&mutex)
        return execute()
    }
    
    public func unlock() {
        pthread_mutex_unlock(&mutex)
    }
}
