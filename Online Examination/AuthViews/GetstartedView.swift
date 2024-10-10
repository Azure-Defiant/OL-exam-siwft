

import SwiftUI



struct GetstartedView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.theme.Uicolor
                    .ignoresSafeArea()
                
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                        .padding(.top, 20)
                    
                    Text("Your journey to secure, seamless, and efficient online examinations starts here. Get ready to experience a new standard in testing, where integrity meets innovation.")
                        .multilineTextAlignment(.center)
                        .padding(.top, -60)
                        .frame(width: 300)
                        .bold()
                    
                    Spacer()
                    NavigationLink("Log In") {
                        SignInView() // Links to LoginView
                    }
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(20)
                    .padding(.top, -200)
                    
                    NavigationLink("Sign In") {
                        SignUpView() // Links to SignInView
                    }
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(Color.black.opacity(0.8))
                    .cornerRadius(20)
                    .padding(.top, -150)
                }
            }
            .navigationBarHidden(true)
        }
    }
}
#Preview {
    GetstartedView()
}

