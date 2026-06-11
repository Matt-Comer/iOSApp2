import SwiftUI

// Opening animated splash screen
struct SplashScreen: View {

    // Shows the main app after animation
    @State private var showMainView = false

    // Creates one animated splash card
    func card(letter: String, color: Color) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .shadow(radius: 3)
                .frame(width: 120, height: 160)
                .foregroundStyle(.white)

            Text(letter)
                .fontWeight(.bold)
                .font(.system(size: 80))
                .foregroundStyle(color)
        }
    }

    var body: some View {
        if showMainView {
            NavigationStack {
                ScavengerListView(showMainView: $showMainView)
            }
        } else {
            ZStack {
                Color.black
                    .ignoresSafeArea()

                card(letter: "H", color: .orange)
                    .splashAnimation(finalYposition: -180, delay: 0)

                card(letter: "U", color: .blue)
                    .splashAnimation(finalYposition: -60, delay: 0.2)

                card(letter: "N", color: .green)
                    .splashAnimation(finalYposition: 60, delay: 0.4)

                card(letter: "T", color: .purple)
                    .splashAnimation(finalYposition: 180, delay: 0.6)
                
                VStack {
                    Spacer()

                    Button("Start Hunt") {
                        showMainView = true
                    }
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: 220)
                    .background(.orange)
                    .foregroundStyle(.black)
                    .cornerRadius(16)
                    .padding(.bottom, 60)
                }
            }
        }
    }
}

// Animates splash cards onto the screen
private struct SplashAnimation: ViewModifier {

    // Controls card movement
    @State private var animating = true

    // Final card position
    let finalYposition: CGFloat

    // Delay before card animation starts
    let delay: Double

    func body(content: Content) -> some View {
        content
            .offset(y: animating ? -700 : finalYposition)
            .rotationEffect(animating ? .zero : Angle(degrees: Double.random(in: -10...10)))
            .animation(
                Animation.bouncy(duration: 1.5, extraBounce: 0.4)
                    .delay(delay),
                value: animating
            )
            .onAppear {
                animating = false
            }
    }
}

// Adds splash animation to any view
private extension View {
    func splashAnimation(finalYposition: CGFloat, delay: Double) -> some View {
        modifier(SplashAnimation(finalYposition: finalYposition, delay: delay))
    }
}

#Preview {
    SplashScreen()
}
