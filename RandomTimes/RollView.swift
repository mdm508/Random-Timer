//
//  RollView.swift
//  RandomTimes
//
//  Created by m on 9/19/22.
//

import SwiftUI

struct RollView {
    
}
extension RollView: View {
    var body: some View {
        VStack{
            Spacer()
            Button(action: {}){
                Label("Roll", systemImage: "die.face.5")
            }
            Spacer()
           
        }
    }
}

struct RollView_Previews: PreviewProvider {
    static var previews: some View {
        RollView()
    }
}
