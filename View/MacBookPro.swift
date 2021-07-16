//
//  MacBookPro.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/10.
//

import SwiftUI


struct MacBookPro: View {
    var body: some View {
        ZStack{
            
            
            Screen()
                  .frame(width: 1270, height: 700)
              
              Bottom()
                  .frame(width: 1200, height: 1000)
        }
    }
}

struct MacBookPro_Previews: PreviewProvider {
    static var previews: some View {
        MacBookPro()
            .previewLayout(.fixed(width: 1500, height: 1000))
    }
}

struct Screen : View{
    
    var body: some View{
        
        ZStack{
            
            
            RoundedRectangle(cornerRadius: 30)
            
            RoundedRectangle(cornerRadius: 30)
                .strokeBorder(Color("Gray"),lineWidth: 3)
            
            VStack{
                
                Image("p8")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1200, height: 590)
                    .cornerRadius(10)
                    .padding(.top,40)
                    .padding(.bottom,30)
                
                
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white.opacity(0.1))
                    .overlay(
                    Text("Nyan Nyan Maru")
                        .font(.footnote.bold())
                        .foregroundColor(.white)
                        .offset(y: -3)
                    
                    )
                
                
            }
            
            
            HStack(spacing:15) {
                ZStack{
                    
                    
                    Color.gray
                        .clipShape(Circle())
                        .frame(width: 10, height: 10)
                    
                    Color.black
                        .clipShape(Circle())
                        .frame(width: 6, height: 6)
                    
                    
                    
                    
                    
                    
                }
                
                Color.green
                    .clipShape(Circle())
                    .frame(width: 10, height: 10)
               
                
                
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .offset(y: 9)
            
            
            
        }
    }
}

struct Bottom : View{
    
    var body: some View{
        
        ZStack{
            
            ZStack{
                
                RoundedRectangle(cornerRadius: 3)
                Color("Gray2")
                
                
                
                RoundedRectangle(cornerRadius: 3)
                    
                    .fill(
                    
                        LinearGradient(colors: getLinear(), startPoint: .leading, endPoint: .trailing)
                    
                    )
                    .frame(width: 180)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
                RoundedRectangle(cornerRadius: 3)
                    
                    .fill(
                    
                        LinearGradient(colors: getLinear().reversed(), startPoint: .leading, endPoint: .trailing)
                    
                    )
                    .frame(width: 180)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                
                
                
            }
            .frame(height: 25)
            .scaleEffect(0.7)
            
            
            CustomShape(radi: 20, corner:[.bottomLeft,.bottomRight])
                .fill(.red.opacity(0.2))
                .frame(height: 50)
                
                .overlay(
                
                    
                    CustomShape(radi: 20, corner:[.bottomLeft,.bottomRight])
                    
                        .fill(
                        
                            LinearGradient(colors: [
                            
                                .black.opacity(0.5),
                                .black.opacity(0.3),
                                .black.opacity(0.2),
                                .clear
                                
                            
                            
                            
                            
                            ], startPoint: .top, endPoint: .bottom)
                        
                        
                        
                        )
                    
                  
                    
                       
                
                
                )
                .overlay(
                
                    CustomShape(radi: 20, corner:[.bottomLeft,.bottomRight])
                    
                        .fill(
                        
                            LinearGradient(colors: [
                            
                                .black.opacity(0.2),
                                .black.opacity(0.1),
                                
                                .clear
                                
                            
                            
                            
                            
                            ], startPoint: .top, endPoint: .bottom)
                        
                        
                        
                        )
                        .frame(height: 80)
                        .rotation3DEffect(.init(degrees: 60), axis: (x: 1, y: 0, z: 0), anchor: .center, anchorZ: 0.3, perspective: 3)
                        .shadow(radius: 2)
                        .scaleEffect(1.03)
                        .offset(y: 50)
                
                
                
                )
                .scaleEffect(0.672)
            
                .rotation3DEffect(.init(degrees: -70), axis: (x: 20, y: 0, z: 0), anchor: .center, anchorZ: 1, perspective: 3)
                .offset(y: 15)
            
            
         
            
            
        }
        .frame(width: 1200, height: 1000)
        .drawingGroup()
        .scaleEffect(1.7)
        .overlay(
            
            ZStack{
            
            
            RoundedRectangle(cornerRadius: 100)
                .fill(Color.gray.opacity(0.3))
            
            
            
            let getColor = Array(repeating: Color.clear, count: 20)
            
            let colos : [Color] = [
            
                .black.opacity(0.5),
                .black.opacity(0.25),
                .black.opacity(0.05),
                          ]
            
            
            
            let combo = colos + getColor + colos.reversed()
            
            
            RoundedRectangle(cornerRadius: 100)
                .fill(
                
                    LinearGradient(colors: combo, startPoint: .leading, endPoint: .trailing)
                    
                       
                
                )
            
            RoundedRectangle(cornerRadius: 100)
                .fill(.black.opacity(0.1))
               
            
        }
                .frame(width: 230, height: 35)
                .offset(y: -15)
                .clipped()
                .offset(y: 2)
        
        
        
        
        
        )
        .offset(y: 350)
    }
    
    func getLinear()->[Color]{
        
        let colors = [
            
            Color("Gray"),
            Color("Gray1"),
            Color("Gray2"),
            Color.red,
            Color.blue.opacity(0.05),
            Color("Gray"),
        
        ]
        return colors
        
        
    }
    
    
    
    
    
}

struct CustomShape : Shape{
    var radi : CGFloat
    var corner : UIRectCorner
    
    func path(in rect: CGRect) -> Path {
       
        
        let path = UIBezierPath(roundedRect:rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radi, height: radi))
        
        return Path(path.cgPath)
    }
}
