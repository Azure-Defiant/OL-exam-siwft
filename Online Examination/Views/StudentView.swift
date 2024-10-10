import SwiftUI

struct StudentView: View {
    var body: some View {
       
    
        // Main TabView for bottom navigation
        TabView {
            // Home Tab
            NavigationView {
                VStack {
                    
                    StudentDashboardView()
                    // Add your home screen content here
                }
              
               
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            // Records Tab
            NavigationView {
                VStack {
                    Text("Records")
                        .font(.largeTitle)
                        .padding()
                    //  records content here
                }
                .navigationTitle("Records")
            }
            .tabItem {
                Image(systemName: "doc.plaintext")
                Text("Records")
            }
            
            // History Tab
            NavigationView {
                VStack {
                    Text("History")
                        .font(.largeTitle)
                        .padding()
                    // Add your history content here
                }
                .navigationTitle("History") // Title in the navigation bar
            }
            .tabItem {
                Image(systemName: "clock.fill")
                Text("History")
            }
            
            NavigationView {
                VStack {
                    Text("Profile")
                        .font(.largeTitle)
                        .padding()
                    // Add your profile content here
                }
                .navigationTitle("Profile") // Title in the navigation bar
            }
            .tabItem {
                Image(systemName: "person.crop.circle")
                Text("Profile")
            }
        }
    }
}

#Preview {
    StudentView()
}

