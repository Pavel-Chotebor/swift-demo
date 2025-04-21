import SwiftUI
import Charts

struct StepData: Identifiable {
    let id = UUID()
    let day: String
    let steps: Int
}

struct AreaChartExample: View {
    let data = [
        StepData(day: "Mon", steps: 20),
        StepData(day: "Tue", steps: 20),
        StepData(day: "Wed", steps: 25),
        StepData(day: "Thu", steps: 25),
        StepData(day: "Fri", steps: 30),
        StepData(day: "Sat", steps: 30),
        StepData(day: "Sun", steps: 32),
    ]

    var body: some View {
        Chart {
            ForEach(data) { entry in
                AreaMark(
                    x: .value("Day", entry.day),
                    y: .value("Steps", entry.steps)
                )
                .foregroundStyle(.green.opacity(0.6))
                .interpolationMethod(.catmullRom)
            }

            // Optional: Line overlay
            ForEach(data) { entry in
                LineMark(
                    x: .value("Day", entry.day),
                    y: .value("Steps", entry.steps)
                )
                .foregroundStyle(.green)
            }
        }
        .chartYAxis {
            AxisMarks(position: .leading)
        }
        .frame(height: 200)
        .padding()
//        .background(Color.black)
//        .foregroundColor(.white)
    }
}
