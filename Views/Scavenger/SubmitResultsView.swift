import SwiftUI

// Displays the final results
struct SubmitResultsView: View {
    
    // Number of items found
        let foundItems: Int

        var body: some View {

            VStack(spacing: 20) {

                // Screen title
                Text("Submit Results")
                    .font(.largeTitle)

                // Total items found
                Text("Items Found: \(foundItems)")

                
                // Reward earned
                            Text(RewardCalculator.getReward(foundItems: foundItems))

                            // Submit button
                            Button("Submit Results") {

                            }
                        }
                        .padding()
                    }
                }

                #Preview {
                    SubmitResultsView(foundItems: 5)
                }

