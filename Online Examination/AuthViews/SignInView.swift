import SwiftUI
import Foundation

struct SignInView: View {
    @StateObject private var viewModel = AuthViewModel()
    @State private var isSignedIn = false
    @State private var selectedRole: String? = nil
    @State private var navigateToStudentView = false
    @State private var navigateToTeacherView = false
    
    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack {
                if !isSignedIn {
                    // Sign-in form
                    VStack {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, -130)
                        
                        Text("Sign In")
                            .font(.custom("Poppins-Regular", size: 20))
                            .padding(.top, -130)
                        
                        // Email TextField
                        TextField("Email", text: $viewModel.signInEmail)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(20)
                            .padding(.top, -70)
                        
                        // Password SecureField
                        SecureField("Password", text: $viewModel.signInPassword)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                            .foregroundColor(Color.black)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.black.opacity(0.1))
                            .cornerRadius(20)
                            .padding(.top, -20)
                        
                    }
                }
            }
        }
    }
    #Preview{
        SignInView()
    }
}


