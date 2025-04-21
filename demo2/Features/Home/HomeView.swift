import SwiftUI

struct HomeView: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 24) {
                    Heading()
                    Text("3 Days Without Training")
                        .font(.title)
                    NavigationLink(destination: TrainningList()) {
                        Text("Start Training")
                            .frame(maxWidth: .infinity)
                            .bold()
                            .padding(24)
                            .background(AppTheme.secondaryColor)
                            .foregroundColor(AppTheme.primaryColor)
                            .cornerRadius(12)
                    }.padding(.horizontal, 20)
                    
                    AreaChartExample()
                    
                
                    
                    Spacer()
                    
                    VStack {
                        Text("long unpracticed exercises")
                            .font(.title)
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack() {
                                CardView(title: "Chest press", image: "figure.core.training")
                                CardView(title: "Squads", image: "figure.strengthtraining.traditional")
                                CardView(title: "Leg press", image: "figure.run")
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


