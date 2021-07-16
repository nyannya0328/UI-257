//
//  CrouselBodyView.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/11.
//

import SwiftUI

struct CrouselBodyView: View {
    @State var offset : CGFloat = 0
    var index : Int
    var body: some View {
        GeometryReader{proxy in
            
            let size = proxy.size
            
            ZStack{
                
                
                Image("p\(index)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: size.width - 8, height: size.height / 1.2)
                    .cornerRadius(10)
                
                
                
                VStack{
                    
                    VStack(alignment: .leading, spacing: 15) {
                        
                        
                        Text("**Natrue and Animal**")
                            .font(.largeTitle)
                            .kerning(1.3)
                            .foregroundStyle(.bar)
                            
                        
                        Text("***City and Train***")
                            .font(.caption.bold())
                            .foregroundColor(.gray)
                        
                    }
                    
                    Spacer(minLength: 0)
                    
                    
                    
                    VStack(spacing:25){
                        
                        
                        HStack{
                            
                            Image("logo")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 60, height: 60)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading, spacing: 15) {
                                Text("Girls Power")
                                    .font(.title.bold())
                                    .foregroundStyle(.gray)
                                
                                Text("Power Beyond you can imagin")
                                    .font(.title2)
                                    .foregroundColor(.brown)
                                    
                                
                                
                            }
                            
                          
                            
                            
                        }
                        HStack{
                            VStack(spacing:15){
                                
                                
                                Text("3100")
                                
                                Text("Followers")
                            }
                            .frame(maxWidth: .infinity)
                            VStack(spacing:15){
                                
                                
                                Text("5100")
                                
                                Text("Fllowing")
                            }
                            .frame(maxWidth: .infinity)
                            
                            VStack(spacing:15){
                                
                                
                                Text("7000")
                                
                                Text("Posts")
                            }
                            .frame(maxWidth: .infinity)
                        }
                        
                        
                    
                        
                    }
                    .background(
                        
                        LinearGradient(colors: getlinear().reversed(), startPoint: .leading, endPoint: .trailing)
                                
                                
                                
                                
                                ,in:RoundedRectangle(cornerRadius: 10))
                    
                    
                    
                
                }
                
                    
            }
            .frame(width: size.width - 8, height: size.height / 1.2)
            .frame(width: size.width, height: size.height)
            
            
        }
        .tag("p\(index)")
        .rotation3DEffect(.init(degrees: getporgess() * 90), axis: (x: 0, y: 1, z: 0), anchor: offset > 0 ? .leading : .trailing, anchorZ: 0, perspective: 1)
        .modifier(ScrollViewoffsetModifier(offset: $offset, anhorPoint: .leading))
        
        
        
    }
    func getporgess() ->CGFloat{
        let progess = -offset / UIScreen.main.bounds.width
        
        return progess
    }
    func getlinear()->[Color]{
        
        let colors = [
            Color.blue.opacity(0.3),
            Color.yellow.opacity(0.3),
            Color.red.opacity(0.3),
            Color.purple.opacity(0.3),
            Color.orange.opacity(0.3),
            Color.primary.opacity(0.3),
            
        
        
        ]
        
        return colors
    }
    
    
    
    
}

struct CrouselBodyView_Previews: PreviewProvider {
    static var previews: some View {
        RotationView()
    }
}


