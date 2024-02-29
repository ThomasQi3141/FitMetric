//
//  ContentView.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            accountView
        } else {
            //not signed in
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            MainMenuView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
