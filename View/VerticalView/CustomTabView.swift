//
//  CustomTabView.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var currentTab : String
    var body: some View {
        HStack(spacing:0){
            
            TabButton(title: "For you", image: "rectangle.portrait", currentTab: $currentTab)
            
            
            TabButton(title: "Search", image: "magnifyingglass", currentTab: $currentTab)
            
            
            TabButton(title: "Setting", image: "gear", currentTab: $currentTab)
            
            
            TabButton(title: "Download", image: "square.and.arrow.up.fill", currentTab: $currentTab)
            
            
            
            
        }
        .frame(height: 70)
        .background(.quaternary)
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalMain()
    }
}

struct TabButton : View{
    
    var title : String
    var image : String
    
    @Binding var currentTab : String
    
    var body: some View{
        
        Button {
            withAnimation(.easeInOut){
                
                currentTab = title
            }
        } label: {
            VStack(spacing:15){
                
                Image(systemName: image)
                    .font(.title2)
                
                Text(title)
                    .font(.footnote.bold())
                
                
            }
            .foregroundColor(currentTab == title ? .primary : .orange)
            .frame(maxWidth: .infinity)
          .background(.red.opacity(0.3),in: RoundedRectangle(cornerRadius: 15))
         .offset(y: currentTab == title ? 0 : 130)
         .shadow(color: Color.black.opacity(0.3), radius: 5, x: 5, y: 5)
        }

        
    }
}
