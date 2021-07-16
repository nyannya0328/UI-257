//
//  Home.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/10.
//

import SwiftUI

struct Home: View {
    @State var selected = 1
    
    @State var slideoffset : CGFloat = 0
    
    
    init(){
        
        
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
            
       TabView{
            
        
               
               GeometryReader{proxy  in
                   
                   let size = proxy.size
                   let offset = proxy.frame(in:.global).minX
                   let screen = proxy.frame(in:.global)
                   let scaler = 1 + (offset) / screen.width
                  
                   
            
                   
                  
                   
                   
                 
                  
                   
                   TabView(selection: $selected) {
                       
                       ForEach(1...7,id:\.self){index in
                           
                           Image("p\(index)")
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: size.width, height: size.height)
                               .cornerRadius(1)
                               .rotationEffect(.init(degrees: -90))
                               .ignoresSafeArea()
                               .tag(index)
                           
                       }
                       
                      
                       
                       
                       
                   }
                   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                   .rotationEffect(.init(degrees: 90))
                   .frame(width: size.height)
                   .frame(width: size.width)
                   .scaleEffect(y: scaler >= 0.88 ? scaler : 0.88,anchor: .center)
                   .offset(x: -offset)
                   .blur(radius: (1 - scaler) * 100)
                  
                  
                   
                  
                   
                   
               }
               .ignoresSafeArea()
               .background(.black)
        
           
           
           
           
           DetailView(current: $selected)
           
           
           Color.red
           
            
           
            
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .ignoresSafeArea()
    
        
        
      
      
            
            
         
            
            
       
       
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
       Home()
    }
}

struct DetailView : View{
    
    @Binding var current : Int
    
    var body: some View{
        
        VStack{
            
            Text("Details")
                .font(.largeTitle.italic())
                .foregroundColor(.green)
                .frame(maxWidth: .infinity,alignment: .leading)
                .shadow(color: .white, radius: 10, x: 5, y: 5)
              
            
            
            Image("p\(current)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .cornerRadius(10)
            
            
            VStack(alignment: .leading, spacing: 15) {
                
                
                Text("Dark Soul")
                    .font(.title.italic())
                  
                    .foregroundColor(.black)
                
                
                Text("By MAN")
                    .font(.title3.bold())
                    .foregroundStyle(.gray)
                
                
                
                
                
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            
            VStack(alignment: .leading, spacing: 15) {
                
                
                
                Button {
                    
                } label: {
                    Text("Down Load Image")
                        .font(.title.bold())
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        .background(
                        
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white,lineWidth: 3)
                        
                        )
                      
                        
                }
                
                Button {
                    
                } label: {
                    Text("Get Present")
                        .font(.title.bold())
                        .foregroundColor(.white)
                        .padding(.vertical,10)
                        .padding(.horizontal,20)
                        .background(
                        
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.white,lineWidth: 3)
                        
                        )
                        
                }

                
                
            }
            .frame(maxWidth: .infinity,alignment: .leading)
                
            
            
            
            
            
            
            
            
            
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .top)
        .preferredColorScheme(.dark)
    }
}
