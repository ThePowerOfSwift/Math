//: Playground - noun: a place where people can play

import UIKit

// MARK: - Simple For in

func simpleForIn(number: Int) {
    for n in 0...number { print(n) }
}

func simpleForInRecursive(number: Int) {
    if number > 0 {
        simpleForInRecursive(number: number - 1)
    }
    print(number)
}

simpleForIn(number: 4)
print("\n")
simpleForInRecursive(number: 5)


// MARK: - Factorial

func factorialForIn(number: Int) -> Int {
    var result = 0
    for n in 1...number {
        if result != 0 {
            result = result * n
        } else {
            result = 1
        }
    }
    
    return result
}

factorialForIn(number: 20) // This is the max

func factorialSwift(number: Int) -> Int {
    return number == 1 ? 1 : number * factorialForIn(number: number - 1)
}

factorialSwift(number: 20)