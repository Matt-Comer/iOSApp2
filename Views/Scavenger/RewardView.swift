import SwiftUI

// Displays scavenger hunt rewards
struct RewardView: View {

    // Number of items found
    let foundItems: Int

    var body: some View {

        VStack(spacing: 20) {
            
            // Reward title
            Text("Reward Status")
                            .font(.largeTitle)

                        // Reward earned
                        Text(RewardCalculator.getReward(foundItems: foundItems))
                            .font(.title2)
                    }
                    .padding()
                }
            }

            #Preview {
                RewardView(foundItems: 5)
            }
