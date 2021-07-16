//
//  RotationView.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/11.
//

import SwiftUI

struct RotationView: View {
    @State var currentimage = "p1"
    var body: some View {
        ZStack{
            GeometryReader{proxy in
                
                let size = proxy.size
                let minX = proxy.frame(in:.global).minX
                
                let progress = -minX / size.width
                let opa = 1 - progress
                
                Image(currentimage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width, height: size.height)
                   
                    .cornerRadius(0)
                    
                    .opacity(minX < 0 ? opa : 1)
                   
            }
            .ignoresSafeArea()
            
           //.overlay(.ultraThinMaterial)
            
            TabView(selection:$currentimage){
                
                ForEach(1...8,id:\.self){index in
                    
                    
                    CrouselBodyView(index: index)
                    
                }
                
                
            }
          
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
    }
}

struct RotationView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}
