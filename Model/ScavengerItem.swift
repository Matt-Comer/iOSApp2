import Foundation

// Stores one scavenger hunt item
struct ScavengerItem: Identifiable {
    let id: UUID
    let name: String
    let business: String
    let clue: String
    let imageName: String
    var isFound: Bool

    // Creates one scavenger item
    init(name: String, business: String, clue: String, imageName: String, isFound: Bool) {
        self.id = UUID()
        self.name = name
        self.business = business
        self.clue = clue
        self.imageName = imageName
        self.isFound = isFound
    }
}
