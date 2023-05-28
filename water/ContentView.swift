//
//  ContentView.swift
//  water
//
//  Created by 彭志威 on 2023/5/28.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                Image(systemName: isWatered ? "crown.fill" : "drop.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered
                                     ? .yellow
                                     : .red)
            }
            // test
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("你喝水了吗？", systemImage: "drop.fill")
            }.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}



















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
