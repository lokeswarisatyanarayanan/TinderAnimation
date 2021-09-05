//
//  TinderLoader.swift
//  TinderLoader
//
//  Created by Lokeswari Satyanarayana on 05/09/21.
//

import Foundation
import SwiftUI

struct TinderLoader: View {
    
    @Binding var frame: CGFloat
    
    var body: some View {
        Circle()
            .strokeBorder(Color.pink.opacity(1.0), lineWidth: 2)
            .background(Circle().fill(Color.pink.opacity(0.2)))
            .opacity(frame == 10 ? 1 : 0.2)
    }
}
