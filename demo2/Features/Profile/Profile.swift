import SwiftUI

struct Profile: View {
    @State private var items = ["set 1", "set 2"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    NavigationLink(destination: Set(setTitle:item)) {
                        Text(item)
                    }
                }
                Button("Add another set") {
                    items.append("Item \(items.count + 1)")
                }
            }.navigationTitle("Your Profile")
        }}
}


#Preview{
    Profile()
}

