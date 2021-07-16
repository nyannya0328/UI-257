//
//  ScrollViewoffsetModifier.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/11.
//

import SwiftUI


struct ScrollViewoffsetModifier: ViewModifier {
    
    @Binding var offset : CGFloat
    var anhorPoint : Anchor = .top
    func body(content: Content) -> some View {
        content
            .overlay(
                GeometryReader{proxy -> Color in
                
                let frame = proxy.frame(in: .global)
                
                
                DispatchQueue.main.async {
                    
                    
                    switch anhorPoint {
                    case .top:
                        offset = frame.minY
                    case .bottom:
                        offset = frame.maxY
                    case .trailing:
                        offset = frame.maxX
                    case .leading:
                        offset = frame.minX
                    }
                }
                
                
                return Color.clear
            }
            
            )
    }
}

struct ScrollViewoffsetModifier_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}

enum Anchor{
    
    case top
    case bottom
    case trailing
    case leading
}
