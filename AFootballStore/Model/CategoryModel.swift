//
//  CategoryModel.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import Foundation

struct Category : Codable, Identifiable {
    let id : Int
    let name : String
    let image : String
}
