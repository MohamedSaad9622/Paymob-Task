import UIKit

// Function to calculate counter values after a series of operations
public func solution(_ N: Int, _ A: inout [Int]) -> [Int] {
    
    var counters = Array(repeating: 0, count: N)
    var maxCounter = 0
    var lastMaxCounter = 0

    for operation in A {
        
        // Check if the operation is within the valid range [1, N]
        if operation >= 1 && operation <= N {
            // Calculate the index corresponding to the operation
            let index = operation - 1
            
            // Calculate the incremented counter value
            let incrementedCounter = max(counters[index], lastMaxCounter) + 1
            counters[index] = incrementedCounter
            
            maxCounter = max(maxCounter, incrementedCounter)
        
        } else if operation == N + 1 {
            lastMaxCounter = maxCounter
        }
    }

    // Update all counters based on the last maximum counter value
    for i in 0..<N {
        counters[i] = max(counters[i], lastMaxCounter)
    }

    return counters
}

// Example usage:
var array = [3, 4, 4, 6, 1, 4, 4]
let counterValues = solution(5, &array)
print("Counter Values:", counterValues)
