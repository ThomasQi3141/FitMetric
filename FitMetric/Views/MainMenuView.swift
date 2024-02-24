//
//  MainMenuView.swift
//  FitMetric
//
//  Created by Qi Thomas on 2024-02-22.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Home")
            .toolbar {
                Button {
                    //Action
                } label: {
                    Image(systemName: "+")
                }
            }
        }
    }
}

#Preview {
    MainMenuView()
}
