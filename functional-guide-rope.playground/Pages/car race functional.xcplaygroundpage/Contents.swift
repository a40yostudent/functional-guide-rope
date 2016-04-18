//: [Previous](@previous) [Next](@next)

import Foundation

struct State {
  let time: Int
  let carPositions: [Int]
}

func moveCars(carPositions: [Int]) -> [Int] {
  return carPositions.map{$0 + randomIntFrom0to(1)}
}

func drawCar(carPosition: Int) -> String {
  return Array(count: carPosition, repeatedValue: "-").joinWithSeparator("")
}

func runStepOfRace(state: State) -> (State) {
  return State(time: state.time - 1, carPositions: moveCars(state.carPositions))
}

func draw(carPositions: [Int]) {
  print(carPositions.map{ drawCar($0) }.joinWithSeparator("\n"))
  print("\n")
}

func race(state: State) {
  draw(state.carPositions)
  if state.time > 0 { race(runStepOfRace(state)) }
}

race(State(time: 5, carPositions: [1, 1, 1]))