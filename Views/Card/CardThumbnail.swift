import SwiftUI

// Shows one scavenger item as a card
struct CardThumbnail: View {

    // Item shown inside the card
    let item: ScavengerItem

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {

            // Item image
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 120)
                .clipped()
                .cornerRadius(12)

            // Item name
            Text(item.name)
                .font(.headline)

            // Business name
            Text(item.business)
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding()
        .background(.white)
        .cornerRadius(16)
        .shadow(radius: 3)
    }
}
