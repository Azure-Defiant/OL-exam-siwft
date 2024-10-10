import SwiftUI

struct RoleView: View {
    let onRoleSelected: (String) -> Void
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Image("Logo")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, -300)
                    
                    Text("Role")
                        .font(.custom("Poppins-Bold", size: 26))
                        .frame(width: 150, height: 40)
                        .padding(.top, -100)
                    
                    HStack(spacing: 20) {
                        Button(action: {
                            onRoleSelected("Teacher")
                        }) {
                            Text("Teacher")
                                .font(.custom("Poppins-Regular", size: 16))
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                        }

                        Text("OR")
                            .font(.custom("Poppins-Regular", size: 20))

                        Button(action: {
                            onRoleSelected("Student")
                        }) {
                            Text("Student")
                                .font(.custom("Poppins-Regular", size: 16))
                                .frame(width: 100, height: 50)
                                .foregroundColor(Color.white)
                                .background(Color.black.opacity(0.8))
                                .cornerRadius(20)
                        }
                    }
                    .padding(.top, 10)
                }
            }
        }
    }
}
