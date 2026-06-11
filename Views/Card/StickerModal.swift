import SwiftUI

// Shows stickers in a sheet
struct StickerModal: View {
    
    // Closes the sticker sheet
    @Environment(\.dismiss) var dismiss
    
    // Sticker image names from Assets
    let stickerNames = [
        "coffeecup",
        "pizzaslice",
        "book",
        "runningshoe",
        "flowerpot",
        "paintbrush",
        "toycar",
        "dogbone",
        "cupcake",
        "giftbox"
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [
                    GridItem(.adaptive(minimum: 90))
                ]) {
                    ForEach(stickerNames, id: \.self) { sticker in
                        Image(sticker)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .padding()
                    }
                }
                .padding()
            }
            .navigationTitle("Stickers")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    StickerModal()
}
