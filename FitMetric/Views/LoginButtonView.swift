//
//  LoginButtonView.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-21.
//

import SwiftUI

struct LoginButtonView: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Do function
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    LoginButtonView(title: "Title", background: .blue) {
        
    }
}
