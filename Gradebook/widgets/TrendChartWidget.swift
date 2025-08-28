import SwiftUI
import Charts

struct TrendChartWidget: View {
    @Binding public var grades: [Grade]
    
    var body: some View {
        Chart(grades) { grade in
            LineMark(x: .value("Grade value", grade.gradeAddedDate),
                     y: .value("Date", grade.gradeValue)
            ).foregroundStyle(.red)
        }
        .chartXAxisLabel("Add date")
        .chartYAxisLabel("Grade values")
        .padding()
    }
}

#Preview {
    ChartWidget(grades: .constant([
        Grade(gradeValue: 5.0, gradeAddedDate: .now),
        Grade(gradeValue: 10.0, gradeAddedDate: .now),
        Grade(gradeValue: 4.0, gradeAddedDate: .now),
    ]))
}
