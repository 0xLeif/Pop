//
//  ContentView.swift
//  Pop
//
//  Created by Zach Eriksen on 10/16/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            
                PopView(tint: .brown) {
                    Text("Hello World!")
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color(.brown))
            
            
                PopView(tint: .purple) {
                    Text("Hello World!")
                        .padding()
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
