//
//  CountdownView.swift
//  RandomTimes
//
//  Created by m on 9/27/22.
//

import SwiftUI

struct CountdownView: View {
    @StateObject var model = CountdownModel()
    @State var maxMinutes = 20.0
    let date = Date()
    var body: some View {
        VStack{
            Text(self.model.timeRemainingString ?? "")
            Slider(value: self.$maxMinutes, in: 1...60)
            Text("Max minutes you are willing to work")
            Text("\(Int(self.maxMinutes)) minutes")
            Button("Start"){
                self.model.startRandomTimer(maxMinutes: Int(self.maxMinutes))
            }
            
        }
    }
}
struct CountdownView_Previews: PreviewProvider {
    static var previews: some View {
        CountdownView()
    }
}
