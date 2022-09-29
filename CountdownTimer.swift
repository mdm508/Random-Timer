//
//  Timer.swift
//  RandomTimes
//
//  Created by m on 9/28/22.
//

import Foundation

struct CountdownTimer {
    let secondsRemaining: Int
}
extension CountdownTimer {
    func tick() -> CountdownTimer?{
        if self.secondsRemaining > 0{
            return CountdownTimer(secondsRemaining: self.secondsRemaining - 1)
        }
        return nil
    }
}
extension CountdownTimer: CustomStringConvertible {
    var description: String {
        let minutes = self.secondsRemaining / 60
        let seconds = self.secondsRemaining % 60
        return String(format: "%.2d:%.2d", arguments: [minutes, seconds])
    }
    
    
}
