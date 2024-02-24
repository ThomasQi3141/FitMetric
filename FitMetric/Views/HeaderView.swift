//
//  HeaderView.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-20.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let description: String
    let rotation: Double
    let background: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: rotation))
                .frame(width: UIScreen.main.bounds.width * 3, height: 300)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .bold()
                Text(description)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            .padding(.top, 80)
        }
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title",
               description: "Subtitle",
               rotation:  15,
               background: .yellow)
}
