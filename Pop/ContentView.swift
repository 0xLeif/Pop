//
//  ContentView.swift
//  Pop
//
//  Created by Zach Eriksen on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PopView(tint: .brown) {
                Text("Hello World!")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
