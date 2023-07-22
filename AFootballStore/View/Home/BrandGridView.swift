//
//  BrandGridView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: columnSpacing) {
                ForEach(brands) {brand in
                    BrandItemView(brand: brand)
                } //: ForEach
            }//: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
