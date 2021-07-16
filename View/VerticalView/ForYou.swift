//
//  ForYou.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct ForYou: View {
    var topEdge : CGFloat
    var body: some View {
        VStack(spacing:15){
            
            HStack{
                
                Text("Today for you!")
                    .font(.largeTitle.weight(.heavy))
                    .foregroundStyle(.ultraThinMaterial)
                    .shadow(radius: 5)
                
                Spacer(minLength: 0)
                
                
                Image(systemName: "person.circle")
                    .font(.title)
                    .foregroundStyle(.green)
                    .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.orange)
                        .frame(width: 10, height: 10)
                        .offset(x: -3, y: -3)
                    
                    ,alignment: .topTrailing
                    
                    )
                
                
            }
            .frame(height: 80)
            .padding(.horizontal)
            
            
            GeometryReader{proxy in
                
                let size = proxy.size
                
                VerticalScrollCrousel {
                    
                    VStack(spacing:0){
                        
                        ForEach(animals){animal in
                            
                            
                            MainImage(animal: animal, topEdge: 70 + 15 + topEdge)
                                .frame(width: size.width, height: size.height)
                            
                            
                        }
                        
                        
                    }
                    
                    
                }
                
                
            }
            
        }
        
    }
}

struct ForYou_Previews: PreviewProvider {
    static var previews: some View {
        VerticalMain()
    }
}

struct MainImage : View{
    
    var animal : Animal
    
    var topEdge : CGFloat
    
    var body: some View{
        
        
        GeometryReader{proxy in
            
            let size = proxy.size
            
            let minY = proxy.frame(in:.global).minY - topEdge
            
            let progress = -minY / size.height
            
            let scale = 1 - (progress / 3)
            
            let opa = 1 - progress
            
            
            ZStack{
                
                
                
                Image(animal.artWork)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width - 30, height: size.height - 80)
                    .cornerRadius(15)
            }
            
            .padding(.horizontal,15)
           
            .scaleEffect(minY < 0 ? scale : 1)
            .opacity(minY < 0 ? opa : 1)
            .offset(y:minY < 0 ? -minY : 0)
          
            
            
        }
        
        
        
    }
    
}
