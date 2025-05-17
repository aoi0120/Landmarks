//
//  RotatedBadgeSymbol.swift
//  Landmarks
//
//  Created by AoiKobayashi on 2025/05/17.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotatedBadgeSymbol(angle: Angle(degrees: -10))
}
