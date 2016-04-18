//: [Previous](@previous) [Next](@next)

import Foundation

var time = 5
var carPositions = [1, 1, 1]
carPositions.map{ _ in print("-")} // print start position

func moveCars() {
  for i in 0..<carPositions.count {
    carPositions[i] += randomIntFrom0to(1)
  }
}

func drawCar(carPosition: Int) {
  print(Array(count: carPosition, repeatedValue: "-").joinWithSeparator(""))
}

func runStepOfRace() {
  time -= 1
  moveCars()
}

func draw() {
  print("")
  for carPosition in carPositions {
    drawCar(carPosition)
  }
}

while time > 0 {
  runStepOfRace()
  draw()
}