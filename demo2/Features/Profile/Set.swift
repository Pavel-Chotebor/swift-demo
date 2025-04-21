import SwiftUI

struct SetCard: View {
    let setName: String
    let reps: Int

    var body: some View {
        HStack {
            Text(setName)
                .foregroundColor(.white)
            Spacer()
            Text("\(reps) reps")
                .foregroundColor(.green)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

struct TraningItem: View {
    // Use the passed default value as the initial state value
    @State private var text: String
    
    // Initialize the state with the passed value
    init(defaultText: String) {
        _text = State(initialValue: defaultText) // Set the default value here
    }
    
    var body: some View {
        VStack {
            TextField("Enter text", text: $text)
        }
    }
}

struct Set : View {
    let setTitle: String
    @State private var items = ["Bench press", "Leg press", "Squads", "Biceps"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    TraningItem(defaultText: item)
                }
                .onMove(perform: moveItem)
            }
            .navigationTitle(setTitle)
            .toolbar {
                EditButton() // Toggle drag mode just like in Settings app
            }
        }
    }
    
    private func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

