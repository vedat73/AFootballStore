//
//  FeaturedTabView.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal,15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .frame(width: UIScreen.main.bounds.size.width,height: 250)
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(.gray)
    }
}
