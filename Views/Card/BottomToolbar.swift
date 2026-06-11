import SwiftUI

// Bottom toolbar for card tools
struct BottomToolbar: View {

    var body: some View {

        HStack {
            Button("Photos") {
            }

            Spacer()

            Button("Frames") {
            }

            Spacer()

            Button("Stickers") {
            }

            Spacer()

            Button("Text") {
            }
        }
        .padding()
    }
}

#Preview {
    BottomToolbar()
}
