//
//  VerticalMain.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct VerticalMain: View {
    @State var currentTab = "For you"
    
    init(){
        
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        TabView(selection:$currentTab){
            
            
            GeometryReader{proxy in
                
                let topEge = proxy.safeAreaInsets.top
                
               ForYou(topEdge: topEge)
                    .padding(.top,topEge)
                    .ignoresSafeArea(.all, edges: .top)
                
            }
                .tag("For you")
            
         RotationView()
                .tag("Search")
            
           Home()
                .tag("Setting")
            
           
               
                
                HorizonTalMain()
                  
           
                .tag("Download")
        }
        .overlay(
        
        
            CustomTabView(currentTab: $currentTab)
            ,alignment: .bottom
        )
        
    }
}

struct VerticalMain_Previews: PreviewProvider {
    static var previews: some View {
        VerticalMain()
    }
}
