// https://github.com/Quick/Quick

@testable import AtomicProperty
import Nimble
import Quick

class TableOfContentsSpec: QuickSpec {
    var atomicProperty: AtomicProperty<Int>!
    @Atomic(lock: SpinLock()) var age = 36
    @Atomic(lock: DispatchSerial()) var userName = "Ali"
    var literal: AtomicProperty<Int> = 4
    
    let queue1 = DispatchQueue(label: "Queue1", qos: .userInteractive)
    let queue2 = DispatchQueue(label: "Queue2", qos: .utility)
    
    override func spec() {
        beforeEach {
            self.atomicProperty = AtomicProperty<Int>(value: 0, lock: Mutex())
        }
        describe("When executing in background") {
            it("should end with initial value after balanced calls") {
                for _ in 0 ..< 3000 {
                    self.queue1.async { //Time consuming task here}
                        self.atomicProperty.mutate { value in
                            value - 1
                        }
                        self.age.mutate { value in
                            value - 1
                        }
                        
                        self.userName.mutate { value in
                            "a"
                        }
                    }
                }
                
                for _ in 0 ..< 3001 {
                    self.queue2.async { //Time consuming task here}
                        self.atomicProperty.mutate { value in
                            value + 1
                        }
                        self.age.mutate { value in
                            value + 1
                        }
                        
                        self.userName.mutate { value in
                            "b"
                        }
                    }
                }
                
                expect(self.atomicProperty.value).toEventually(equal(1))
                expect(self.age.value).toEventually(equal(37))
                expect(self.userName.value).toEventually(equal("b"))
            }
        }
    }
}
