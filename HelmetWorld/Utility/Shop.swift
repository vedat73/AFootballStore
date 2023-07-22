//
//  Shop.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import Foundation

class Shop : ObservableObject {
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}
