//
//  Badge.swift
//  Landmarks
//
//  Created by AoiKobayashi on 2025/05/17.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: Angle(degrees: (Double(index) / Double(8) * 360.0)))
            
        }
    }
    
    var body: some View {
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
                
            }
        }
    }
}

#Preview {
    Badge()
}
