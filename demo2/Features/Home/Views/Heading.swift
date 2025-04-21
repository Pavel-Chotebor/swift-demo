import SwiftUI

struct ProfileButton: View {
    var body: some View {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
    
}

struct Heading: View {    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "figure.run")
                    .imageScale(.large)
                    .foregroundStyle(.green)
                Text("My fitness")
                    .fontWeight(.heavy)
            }.frame(maxWidth: .infinity, alignment: .leading)
            NavigationLink(destination: Profile()) {
                ProfileButton()
            }
        }
        .padding()
    }
}
