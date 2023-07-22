//
//  TopPartDetailView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct TopPartDetailView: View {
    // MARK: - PROPERTIES
    @State private var isAnimating : Bool = false
    @EnvironmentObject var shop : Shop
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 6) {
            // PRICE
            VStack(alignment: .leading,spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            } //: VStack
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        } //: HStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        }
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
