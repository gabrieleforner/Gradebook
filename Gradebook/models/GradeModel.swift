import Foundation
import SwiftData

@Model
public class Grade {
    @Attribute(.unique) public var id: UUID
    public var gradeValue: Double
    public var gradeAddedDate: Date
    
    public init(gradeValue: Double, gradeAddedDate: Date) {
        self.id = UUID()
        self.gradeValue = gradeValue
        self.gradeAddedDate = gradeAddedDate
    }
}
