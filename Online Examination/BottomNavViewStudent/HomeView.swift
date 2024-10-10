import SwiftUI

struct StudentDashboardView: View {
    var userName: String = "User"
    
    var body: some View {
        
        NavigationView {
            ZStack{
                Color.theme.Uicolor
                    .ignoresSafeArea()
                
                
                VStack {
                    // Profile Section
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.blue)
                        
                        VStack(alignment: .leading) {
                            Text("Welcome, \(userName)!")
                                .font(.title)
                                .bold()
                            
                            Text("Student Examinie")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        .padding(.leading, 10)
                        
                        Spacer()
                        
                    }
                    .padding()
                    
                    // ScrollView with Buttons
                    ScrollView {
                        VStack(spacing: 20) {
                            // Example buttons
                            Button(action: {
                                // Action for viewing exam records
                            }) {
                                DashboardButtonView(label: "View Exam Records", color: .green)
                            }
                            
                            Button(action: {
                                // Action for taking exams
                            }) {
                                DashboardButtonView(label: "Take Exam", color: .blue)
                            }
                            
                            Button(action: {
                                // Action for checking submission history
                            }) {
                                DashboardButtonView(label: "Submission History", color: .orange)
                            }
                            
                            Button(action: {
                                // Action for updating profile
                            }) {
                                DashboardButtonView(label: "Update Profile", color: .purple)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .frame(maxHeight: .infinity)
                }
                .navigationBarTitle("Dashboard", displayMode: .inline)
            }
        }
    }
    
    // Button styling component
    struct DashboardButtonView: View {
        let label: String
        let color: Color
        
        var body: some View {
            Text(label)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(color)
                .cornerRadius(10)
        }
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        StudentDashboardView(userName: "Josh")  // You can replace this with the logged-in student's name
    }
}
