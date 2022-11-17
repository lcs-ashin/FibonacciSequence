//
//  main.swift
//  FibonacciSequence
//
//  Created by Eunbi Shin on 2022-11-15.
//

import Foundation


// Iteration: for - in
var previousN1 = 0
var previousN2 = 1

for i in 0...9 {
    if i == 0 || i == 1{
        print(i)
    } else {

        let result = previousN1 + previousN2
        print(result)
        previousN1 = previousN2
        previousN2 = result

    }
}

// Recursion
func fibonacciByRecursion(of number: Int) -> Int {
    
    if number == 0 {
        return 0
    } else if number == 1 {
        return 1
    } else {
        return fibonacciByRecursion(of: number - 2) + fibonacciByRecursion(of: number - 1)
    }
    
}

var numberOfValues = 10

for j in 0...numberOfValues {
    print(fibonacciByRecursion(of: j))
}
