//
//  AddToCartDetailView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased()) // to make this text in the button flexible horizontally, just add Spacers to both sides
                .font(.system(.title2,design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        } //: Button
        .padding(15)
        .background(
            Color (red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
