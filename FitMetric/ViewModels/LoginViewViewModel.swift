//
//  LoginViewViewModel.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//

import FirebaseAuth
import Foundation

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login () {
        guard validate() else {
            return
        }
        
        //Attempt login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate () -> Bool {
        errorMessage = ""
        //empty login
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            errorMessage = "Please fill in all fields"
            return false
        }
        
        //invalid email
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Invalid email"
            return false
        }
        
        return true
    }
}
