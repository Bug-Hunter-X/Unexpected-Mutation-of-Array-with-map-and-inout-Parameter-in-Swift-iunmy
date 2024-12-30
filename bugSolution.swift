let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { $0 * 2 }

print(doubledNumbers) // Output: [2, 4, 6, 8, 10]

//The solution is to avoid using inout parameter with map and similar higher order functions.

func doubleNumbers(numbers: [Int]) -> [Int] {
    return numbers.map { $0 * 2 }
}

var numbers2 = [1, 2, 3, 4, 5]
let doubledNumbers2 = doubleNumbers(numbers: numbers2)
print(doubledNumbers2) // Output: [2, 4, 6, 8, 10]
print(numbers2) // Output: [1, 2, 3, 4, 5] // The original array remains unchanged