import SwiftUI

struct TrainningDetail: View {
    let title: String
    
    @Environment(\.dismiss) var dismiss
    @State private var reps: Int = 25

    var body: some View {
            ScrollView(.vertical, showsIndicators: false) {
                Spacer()
                VStack(spacing: 50) {
                    VStack(spacing: 20) {
                        Text("last weight: 35kg")
                            .font(.title)
                        Section("Today's value:") {
                            HStack(spacing: 40) {
                                Button(action: { reps = max(0, reps - 1) }) {
                                    Image(systemName: "minus")
                                        .frame(width: 70, height: 70)
                                        .background(AppTheme.secondaryColor)
                                        .foregroundColor(.green)
                                        .cornerRadius(8)
                                }
                                Text("\(reps)")
                                    .frame(width: 70, height: 70)
                                    .font(.title)
                                Button(action: { reps += 1 }) {
                                    Image(systemName: "plus")
                                        .frame(width: 70, height: 70)
                                        .background(AppTheme.secondaryColor)
                                        .foregroundColor(AppTheme.primaryColor)
                                        .cornerRadius(8)
                                }
                            }.frame(maxWidth: .infinity)
                            
                            Button("save") {
                                dismiss()
                            }.padding(24)
                                .font(.title2)
                                .frame(maxWidth: .infinity)
                                .background(AppTheme.primaryColor)
                                .foregroundColor(.white).cornerRadius(8)
                            
                            Spacer()
                            
                            AreaChartExample()
                            
                        }.padding(.horizontal, 80)
                        
                    }
                    
                    
                    Spacer()
                    
                    Button("Skip") {}
                        .foregroundColor(.red)
                }
            }.navigationTitle(title)
    }
}

#Preview {
    TrainningDetail(title: "test")
}
