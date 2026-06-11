//
// Created by Matt Comer
// June 11, 2026
//

import SwiftUI

// Shows the main scavenger hunt list
struct ScavengerListView: View {

    // Lets the Menu button return to the splash screen
    @Binding var showMainView: Bool
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                
                // Header image and title
                ZStack {
                    Image("SH_Splash_01")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 125)
                        .clipped()
                        .cornerRadius(20)
                    
                    Text("Scavenger Hunt")
                        .font(.title)
                        .bold()
                        .foregroundStyle(.white)
                }
                .padding(.horizontal)
                .padding(.top, 4)
                
                // Reads screen size for flexible item images
                GeometryReader { geometry in
                    
                    let imageSize = geometry.size.width * 0.14
                    
                    List(scavengerItems) { item in
                        NavigationLink {
                            ScavengerDetailView(item: item)
                        } label: {
                            HStack(spacing: 12) {
                                
                                Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: imageSize, height: imageSize)
                                    .clipped()
                                    .cornerRadius(12)
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(item.name)
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                    
                                    Text(item.business)
                                        .font(.subheadline)
                                        .foregroundStyle(.gray)
                                }
                            }
                            .padding(.vertical, 6)
                        }
                        .listRowBackground(Color.gray.opacity(0.30))
                    }
                    .scrollContentBackground(.hidden)
                }
            }
        }
        .navigationTitle("")
        .toolbarColorScheme(.dark, for: .navigationBar)
        .toolbarBackground(.black, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Menu") {
                    showMainView = false
                }
                .foregroundStyle(.orange)
            }
        }
    }
}

#Preview {
    NavigationStack {
        ScavengerListView(showMainView: .constant(true))
    }
}
