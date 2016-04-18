//: [Previous](@previous) [Next](@next)

import Foundation

var time = 5
var carPositions = [1, 1, 1]
carPositions.map{ _ in print("-")} // start position

while time > 0 {
  // decrease time
  time -= 1
  
  print("")
  for i in 0..<carPositions.count {
    // MARK: move cars
    carPositions[i] += randomIntFrom0to(1)
    
    // MARK: draw cars
    print(Array(count: carPositions[i], repeatedValue: "-").joinWithSeparator(""))
  }
}