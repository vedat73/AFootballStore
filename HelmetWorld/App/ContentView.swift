//
//  ContentView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing : 0) {
                NavigationBarView()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top, getSafeAreaFromTop())
                    .background(.white)
                    .shadow(color: .black.opacity(0.05), radius: 5, x:0, y:5)
               
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing : 0) {
                            FeaturedTabView()
                                .padding(.vertical,20)
                        
                            CategoryGridView()
                            TitleView(title: "Helmets")
                            
                        LazyVGrid(columns: gridLayout,spacing: 15) {
                            ForEach(products) { product in
                                ProductItemView(product: product)
                            } //: LOOP
                        } //: LazyVGrid
                        .padding(15)
                        
                        TitleView(title: "Brands")
                        
                        BrandGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                }) //: ScrollView
                
            } //: VStack
            
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
