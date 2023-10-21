import UIKit

// Function to find the missing element in a permutation
public func solution(_ A: inout [Int]) -> Int {
   
    let n = A.count + 1  // Since one element is missing, the array size is N+1
    
    let expectedSum = (n * (n + 1)) / 2 // Sum of integers from 1 to N + 1
    
    let actualSum = A.reduce(0, +) // Calculate the sum of elements in the array
    
    let missingElement = expectedSum - actualSum // Find the missing element
    
    return missingElement
}

// Example usage:
var array = [2, 3, 1, 5]
let missingElement = solution(&array)
print("The missing element is:", missingElement)
