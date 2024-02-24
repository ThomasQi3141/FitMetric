//
//  RegisterViewViewModel.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//

import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    func register () {
        guard validate() else {
            return
        }
        
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userID = result?.user.uid else {
                return
            }
            self?.addUserRecord(id: userID)
        }
    }
    
    private func addUserRecord (id: String) {
        let newUser = User(id: id, 
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        let database = Firestore.firestore()
        
        database.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
    }
    
    private func validate () -> Bool {
        
        //empty login
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                  
                  return false
        }
        
        //email invalid
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        
        //password less than 6 characters
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
}
