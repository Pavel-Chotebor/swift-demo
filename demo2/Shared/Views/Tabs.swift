import SwiftUI


struct Tabs: View {
    @Binding var selectedTab: Int

    var body: some View {
        VStack {
            // Tab Buttons
            HStack {
                Button(action: {
                    selectedTab = 0
                }) {
                    Text("Tab 1")
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(selectedTab == 0 ? Color.black : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Button(action: {
                    selectedTab = 1
                }) {
                    Text("Tab 2")
                        .padding(20)
                        .frame(maxWidth: .infinity)
                        .background(selectedTab == 1 ? Color.black : Color.gray)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
        .padding()
    }
}
