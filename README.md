# AtomicProperty

![Travis](https://img.shields.io/travis/away4m/AtomicProperty?style=for-the-badge)
![Cocoapods](https://img.shields.io/cocoapods/v/AtomicProperty?style=for-the-badge)
[![License](https://img.shields.io/cocoapods/l/AtomicProperty.svg?style=for-the-badge)](https://cocoapods.org/pods/AtomicProperty)
[![Platform](https://img.shields.io/cocoapods/p/AtomicProperty.svg?style=for-the-badge)](https://cocoapods.org/pods/AtomicProperty)

## Example

```swift
// Classic Setup
 var atomicProperty =  AtomicProperty<Int>(value: 0, lock: Mutex())

// Using with property wrapper
@Atomic(lock: SpinLock()) var age = 36

// ExpressibleByIntegerLiteral
 var literal: AtomicProperty<Int> = 4
```

## Requirements

## Installation

AtomicProperty is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'AtomicProperty'
```

## Author

alikiran, away4m@gmail.com

## License

AtomicProperty is available under the MIT license. See the LICENSE file for more info.
