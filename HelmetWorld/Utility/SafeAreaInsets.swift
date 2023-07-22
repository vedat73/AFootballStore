//
//  SafeAreaInsets.swift
//  HelmetWorld
//
//  Created by Vedat Ozlu on 22.07.2023.
//

import SwiftUI

func getSafeAreaFromTop()-> CGFloat {
    let keyWindow = UIApplication.shared.connectedScenes
    
        .filter({$0.activationState == .foregroundActive})
    
        .map({$0 as? UIWindowScene})
    
        .compactMap({$0})
    
        .first?.windows
    
        .filter({$0.isKeyWindow}).first
    return (keyWindow?.safeAreaInsets.top ?? 0)
}
