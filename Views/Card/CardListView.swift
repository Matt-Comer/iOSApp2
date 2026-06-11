//  Created by matthew comer on 2026-06-04.
import SwiftUI

// Shows scavenger items in a card grid
struct CardListView: View {

    // Grid layout for cards
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        ScrollView {

            // Displays cards in a flexible grid
            LazyVGrid(columns: columns, spacing: 16) {

                // Creates one card for each item
                ForEach(scavengerItems) { item in
                    NavigationLink {
                        ScavengerDetailView(item: item)
                    } label: {
                        CardThumbnail(item: item)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding()
        }
        .navigationTitle("Scavenger Cards")
    }
}
