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
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(.brown))
            
            
            PopView(tint: .systemPurple) {
                Text("Hello World!")
                    .padding()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(.systemPurple))
            
            PopView(tint: .systemOrange) {
                Image(systemName: "pencil")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(.systemOrange))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
