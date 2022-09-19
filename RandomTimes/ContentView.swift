//
//  ContentView.swift
//  RandomTimes
//
//  Created by m on 9/19/22.
//

import SwiftUI

struct ContentView {
    @State var state = ContentViewState.readyToRoll
}

extension ContentView: View {
    var body: some View {
        ZStack{
            self.countdownTimerColor
            if state == .readyToRoll{
                RollView()
            } else {
                CountdownView(countdownText: self.countdownTimerText)
            }
        }
    }
}
extension ContentView {
    enum ContentViewState {
        case readyToRoll
        case countingTimeFocusTimer
        case countingBreakTimer
    }
    var countdownTimerColor: Color {
        switch (self.state){
        case .countingTimeFocusTimer:
            return Color.red
        case .countingBreakTimer:
            return .green
        case .readyToRoll:
            return .clear
        }
    }
    var countdownTimerText: String {

        state == .countingTimeFocusTimer ? "Focus" : "Break"
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDisplayName("Roll")
        ContentView(state: .countingBreakTimer).previewDisplayName("Break")
        ContentView(state: .countingTimeFocusTimer).previewDisplayName("Focus")
        
    }
}
