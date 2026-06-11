import SwiftUI

// Shows one scavenger item as a larger card
struct SingleCardView: View {

    // Item shown on this screen
    let item: ScavengerItem

    var body: some View {
        VStack(spacing: 18) {

            // Large item image
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(18)
                .padding()

            // Item name
            Text(item.name)
                .font(.largeTitle)
                .bold()

            // Business location
            Text(item.business)
                .font(.headline)
                .foregroundStyle(.gray)

            // Clue for the item
            Text(item.clue)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle(item.name)
    }
}
