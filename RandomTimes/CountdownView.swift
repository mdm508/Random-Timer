//
//  CountdownView.swift
//  RandomTimes
//
//  Created by m on 9/19/22.
//

import SwiftUI

struct CountdownView {
    var countdownText: String
}
extension CountdownView: View {
    var body: some View {
        VStack{
            Spacer()
            Text(self.countdownText)
            Text("7:00").font(.system(.largeTitle))
            Spacer()
            Button(action: {}){
                Label("", systemImage: "x.circle")
            }
        }
    }
}

struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView(countdownText: "Focus")
        CountdownView(countdownText: "Break")
    }
}
