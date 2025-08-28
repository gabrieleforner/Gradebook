import SwiftData
import Foundation

@Model
class Subject : Identifiable {
    @Attribute(.unique) var id = UUID()
    var name: String
    @Relationship(deleteRule: .cascade) var grades: [Grade]
    
    public init( name: String) {
        self.id = UUID()
        self.name = name
        self.grades = []
    }
}
