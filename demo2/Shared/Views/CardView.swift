import SwiftUI

struct CardView: View {
    let title: String
    let image: String
    
    var body: some View {
        NavigationLink(destination: TrainningDetail(title:title)) {
            HStack{
                Image(systemName: image)
                    .imageScale(.large)
                    .foregroundStyle(.white)
                Text(title)
                    .font(.headline)
                    .background(AppTheme.secondaryColor)
//                    .foregroundColor(AppTheme.primaryColor)
            }
            .frame(width: 220, height: 150)
            .background(AppTheme.secondaryColor)
            .foregroundColor(AppTheme.primaryColor)
            .cornerRadius(20)
//            .shadow(radius: 5)
            .padding(.vertical)
        }
    }
}
