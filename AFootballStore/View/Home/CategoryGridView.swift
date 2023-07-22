//
//  CategoryGridView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(rotateClockwise: false)
                } footer: {
                    SectionView(rotateClockwise: true)
                }
            } //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        } //: ScrollView
    }
}
// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
