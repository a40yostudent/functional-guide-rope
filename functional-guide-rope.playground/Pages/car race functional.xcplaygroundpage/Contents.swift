//: [Previous](@previous) [Next](@next)

import Foundation

struct State {
  let time: Int
  let carPositions: [Int]
}

func moveCars(_ carPositions: [Int]) -> [Int] {
  return carPositions.map{$0 + randomIntFrom0to(1)}
}

func drawCar(_ carPosition: Int) -> String {
    return Array(repeating: "-", count: carPosition).joined(separator: "")
}

func runStepOfRace(_ state: State) -> (State) {
  return State(time: state.time - 1, carPositions: moveCars(state.carPositions))
}

func draw(_ carPositions: [Int]) {
    print(carPositions.map{ drawCar($0) }.joined(separator: "\n"))
  print("\n")
}

func race(_ state: State) {
  draw(state.carPositions)
  if state.time > 0 { race(runStepOfRace(state)) }
}

race(State(time: 5, carPositions: [1, 1, 1]))
