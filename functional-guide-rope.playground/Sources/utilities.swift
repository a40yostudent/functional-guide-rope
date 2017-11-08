import Foundation

// Return a random Int choosen from 0 to given n
public func randomIntFrom0to(_ n: Int) -> Int {
  return Int(arc4random_uniform(UInt32(n + 1)))
}
