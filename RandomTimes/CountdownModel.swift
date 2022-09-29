//
//  Model.swift
//  RandomTimes
//
//  Created by m on 9/27/22.
//

import Foundation
import Combine


class CountdownModel: ObservableObject {
    var subscribers: Set<AnyCancellable> = []
    /// A timer that is nil is either not started or zero
    @Published var timer: CountdownTimer?
}
extension CountdownModel {
    var timeRemainingString: String? {
        if let timer = self.timer {
            return timer.description
        }
        return nil
    }
    func startRandomTimer(maxMinutes: Int){
        self.startTimer(minutes: Int.random(in: 1...maxMinutes))
    }
    private func startTimer(minutes: Int, seconds: Int = 0){
        self.timer = CountdownTimer(secondsRemaining: minutes * 60 + seconds)
        Timer.publish(every: 1, on: RunLoop.main, in: .common)
            .autoconnect()
            .sink{[weak self] _ in
                if let self = self {
                    if let timer = self.timer {
                        self.timer = timer.tick()
                    }
                }
            }
            .store(in: &self.subscribers)
    }

}



