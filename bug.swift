let numbers = [1, 2, 3, 4, 5]

let doubledNumbers = numbers.map { $0 * 2 }

print(doubledNumbers) // Output: [2, 4, 6, 8, 10]

//The bug is that the original array 'numbers' is mutated if map is used with inout parameter.

func doubleNumbersInPlace(numbers: inout [Int]) {
    numbers = numbers.map { $0 * 2 }
}

var numbers2 = [1, 2, 3, 4, 5]
doubleNumbersInPlace(numbers: &numbers2)
print(numbers2) // Output: [2, 4, 6, 8, 10]

//To avoid this, avoid using inout parameter with map and other similar higher order functions