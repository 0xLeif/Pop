//
//  PopView.swift
//  Pop
//
//  Created by Zach Eriksen on 10/16/20.
//

import SwiftUI

struct PopView<Content: View>: View {
    @State private var isPressed = false
    
    let tint: UIColor
    let content: Content
    
    init(
        tint: UIColor,
        isPressed: Bool = false,
        content: () -> Content
    ) {
        self.tint = tint
        self.content = content()
        self.isPressed = isPressed
    }
    
    var body: some View {
        if isPressed {
            pressedPop
        } else {
            normalPop
        }
    }
    
    var normalPop: some View {
        content
            .padding(1)
            .background(
                Rectangle()
                    .foregroundColor(Color(tint))
                    .cornerRadius(16)
                    .shadow(color: Color(tint.lighter(._25)), radius: 8, x: -4, y: -4)
                    .shadow(color: Color(tint.darker(._25)), radius: 8, x: 4, y: 4)
                    .blur(radius: 1)
                    .padding(4)
                    .background(
                        Rectangle()
                            .foregroundColor(.black)
                            .cornerRadius(24)
                    )
            )
    }
    
    var pressedPop: some View {
        content
            .background(
                LinearGradient(gradient: Gradient(colors: [Color(tint.lighter(._25)), Color(tint.darker(._25))]), startPoint: UnitPoint(x: -4, y: -4), endPoint: UnitPoint(x: 4, y: 4))
                    .cornerRadius(24)
            )
            .padding(1)
            .background(
                Rectangle()
                    .foregroundColor(Color(tint))
                    .cornerRadius(16)
                    .shadow(color: Color(tint.darker(._25)), radius: 8, x: -4, y: -4)
                    .shadow(color: Color(tint.lighter(._25)), radius: 8, x: 4, y: 4)
                    .blur(radius: 1)
                    .padding(4)
                    .background(
                        Rectangle()
                            .foregroundColor(.black)
                            .cornerRadius(24)
                    )
            )
    }
}

struct PopView_Previews: PreviewProvider {
    static var previews: some View {
        PopView(tint: .systemPurple) {
            Text("Hello World")
        }
    }
}
