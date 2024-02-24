//
//  LoginView.swift
//  NoteNest
//
//  Created by Qi Thomas on 2024-02-19.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                HeaderView(title: "FitMetric",
                           description: "Empowering Fitness Through Data",
                           rotation: 15,
                           background: .blue)
                .offset(y: 50)
                

                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    TextField("Email", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocorrectionDisabled()
                        .autocapitalization(.none)
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    LoginButtonView(title: "Log In", background: .blue) 
                    {
                        //Attempt log in
                        viewModel.login()
                    }
                    .padding()
                }
                
                // Register
                VStack {
                    Text("Don't have an account?")
                        .padding(.bottom, 20)
                    //Go to registration
                    NavigationLink("Sign Up", destination: RegisterView())
                }
                .padding(.bottom, 40)
        
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
