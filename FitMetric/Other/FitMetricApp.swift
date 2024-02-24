//
//  NoteNestApp.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//


import FirebaseCore
import SwiftUI

@main
struct FitMetricApp: App {
    init () {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
