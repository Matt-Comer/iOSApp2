import Foundation

// Tracks which toolbar button was selected
enum ToolbarSelection: CaseIterable, Identifiable {
    case photoModal
    case frameModal
    case stickerModal
    case textModal

    var id: Int {
        hashValue
    }
}
