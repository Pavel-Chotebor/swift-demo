import SwiftUI

struct TrainningList: View {
    var body: some View {
            VStack {
                ScrollView(.vertical, showsIndicators: false) {
                    Spacer()
                    Text("Legs").frame(maxWidth: .infinity, alignment: .leading).font(.title2).padding(.horizontal, 20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                            CardView(title: "Leg press", image: "figure.run")
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                        }
                    }
                    Text("Chest").frame(maxWidth: .infinity, alignment: .leading).font(.title2).padding(.horizontal, 20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                            CardView(title: "Leg press", image: "figure.run")
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                        }
                    }
                    Text("Back").frame(maxWidth: .infinity, alignment: .leading).font(.title2).padding(.horizontal, 20)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack() {
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                            CardView(title: "Leg press", image: "figure.run")
                            CardView(title: "Chest press", image: "figure.core.training")
                            CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                        }
                    }.frame(maxWidth: .infinity).navigationTitle("Trainning list")
                }}}
}


#Preview {
    TrainningList()
}
