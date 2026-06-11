import Foundation

// Calculates scavenger hunt rewards
struct RewardCalculator {

    // Returns the reward earned
    static func getReward(foundItems: Int) -> String {

        // Grand prize reward
        if foundItems >= 10 {
            return "$5000 Grand Prize Entry"
        }

        // Twenty percent discount
        if foundItems >= 7 {
            return "20% Discount"
        }

        // Ten percent discount
        if foundItems >= 5 {
            return "10% Discount"
        }

        // No reward yet
        return "Keep Searching"
    }
}
