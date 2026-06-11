//
// Created by Matt Comer
// Date: June 11, 2026
// Scavenger hunt detail screen
//

import SwiftUI

// Shows details for one scavenger hunt item
struct ScavengerDetailView: View {

    // Item selected from the list
    let item: ScavengerItem

    var body: some View {

        ZStack {

            // Dark app background
            Color.black
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {

                    // Item image card
                    Image(item.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.gray.opacity(0.22))
                        .cornerRadius(20)

                    // Item title
                    Text(item.name)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.orange)

                    // Business card
                    VStack(alignment: .leading, spacing: 8) {

                        // Business label
                        Text("Business")
                            .font(.headline)
                            .foregroundStyle(.gray)

                        // Business name
                        Text(item.business)
                            .font(.title3)
                            .bold()
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.22))
                    .cornerRadius(16)

                    // Clue card
                    VStack(alignment: .leading, spacing: 8) {

                        // Clue label
                        Text("Clue")
                            .font(.headline)
                            .foregroundStyle(.gray)

                        // Clue text
                        Text(item.clue)
                            .font(.body)
                            .foregroundStyle(.white)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.gray.opacity(0.22))
                    .cornerRadius(16)

                    Spacer()
                }
                .padding()
            }
        }
        .navigationTitle(item.name)
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

#Preview {
    NavigationStack {
        ScavengerDetailView(item: scavengerItems[0])
    }
}
