import SwiftUI

struct SignUpView: View {
    @StateObject private var viewModel = AuthViewModel()
    @State private var selectedRole: String? = nil
    @State private var isSignedUp = false
    @State private var navigateToStudentView = false
    @State private var navigateToTeacherView = false

    var body: some View {
        ZStack {
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()

            VStack {
                if !isSignedUp {
                    // Sign-up form
                    VStack {
                        Image("Logo")
                            .resizable()
                            .scaledToFit()
                            .padding(.top, -130)

                        Text("Sign Up")
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

                        // Role selection
                        Text("Select Role")
                            .font(.custom("Poppins-Regular", size: 16))
                            .padding(.top, 20)

                        HStack(spacing: 20) {
                            // Teacher Button
                            Button(action: {
                                selectedRole = "Teacher"
                            }) {
                                Text("Teacher")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(Color.white)
                                    .background(selectedRole == "Teacher" ? Color.blue : Color.black.opacity(0.8))
                                    .cornerRadius(20)
                            }

                            Text("OR")
                                .font(.custom("Poppins-Regular", size: 20))

                            // Student Button
                            Button(action: {
                                selectedRole = "Student"
                            }) {
                                Text("Student")
                                    .font(.custom("Poppins-Regular", size: 16))
                                    .frame(width: 100, height: 50)
                                    .foregroundColor(Color.white)
                                    .background(selectedRole == "Student" ? Color.blue : Color.black.opacity(0.8))
                                    .cornerRadius(20)
                            }
                        }

                        // SignUp Button
                        Button(action: {
                            Task {
                               
                            }
                        }) {
                            Text("Sign Up")
                                .font(.custom("Poppins-Bold", size: 16))
                                .foregroundColor(Color.white)
                                .frame(width: 150, height: 55)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                        }
                        .padding(.top, 20)                        }
                    }
                }
            }
        }
        
}

#Preview {
    SignUpView()
}
