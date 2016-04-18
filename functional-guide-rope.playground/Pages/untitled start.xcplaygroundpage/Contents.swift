import Foundation
//: This is an unfunctional function:
var a = 0
func increment() {
  a += 1
}
//: This is a functional function:
func increment(a: Int) -> Int {
  return a + 1
}
//: This is a simple map that takes a list of names and returns a list of the lengths of those names:
let name_lengths = ["Mary", "Isla", "Sam"].map{$0.characters.count}
//: This is a map that squares every number in the passed collection:
let squares = [0, 1, 2, 3, 4].map{$0 * $0}
//: The unfunctional code below takes a list of real names and replaces them with randomly assigned code names.
var names = ["Mary", "Isla", "Sam"]
let code_names = ["Mr. Pink", "Mr. Orange", "Mr. Blonde"]
for i in 0..<names.count {
  names[i] = code_names[randomIntFrom0to(names.count - 1)]
}
print(names)
//: This can be rewritten as a map:
let names2 = ["Mary", "Isla", "Sam"]
let secret_names = names2.map{ _ in return code_names[randomIntFrom0to(names.count - 1)] }
print(secret_names)
//: This is a simple reduce. It returns the sum of all the items in the collection.
let sum = [0, 1, 2, 3, 4].reduce(0, combine: +)
print(sum)
//: zip array, pipelining example
let one = [1,3,5]
let two = [2,4,6]

let merged = zip(one, two).flatMap { [$0, $1] }

print(merged) // [1, 2, 3, 4, 5, 6]
