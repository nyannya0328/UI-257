//
//  HorizonTalMain.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct HorizonTalMain: View {
    @State var current = 1
  
    var body: some View {
        VStack{
            
            TabView(selection:$current){
                
                ForEach(1...3,id:\.self){index in
                    
                    GeometryReader{proxy -> AnyView in
                        
                        let size = proxy.size
                        
                        
                        let minX = proxy.frame(in: .global).minX
                        
                     
                    
                        let progress = -minX / size.width
                        
                        var scale = progress > 0 ? 1 - progress : 1 + progress
                        
                        scale = scale < 0.7 ? 0.7 : scale
                        
                        
                        
                        
                        
                        
                        return AnyView(
                            VStack(spacing:15){
                                
                                Image("pic\(index)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(.horizontal,20)
                                    .frame(maxHeight: .infinity)
                            
                            
                            switch current{
                                
                            case 1 :  Text("Pet Addataptaiton")
                                    .font(.title.bold())
                                    .foregroundColor(.primary)
                                    .foregroundStyle(.quaternary)
                                
                                Text("Pet Amazing")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .overlay(
                                  Capsule()
                                    .fill(Color.red.opacity(0.2))
                                    .frame(width: 20, height: 15)
                                    .overlay(
                                    Text("pet")
                                        .font(.system(size: 5, weight: .bold))
                                        .foregroundColor(.black)
                                    )
                                    
                                    ,alignment: .bottomLeading
                                    
                                    )
                                
                            case 2 :  Text("Pet Addataptaiton")
                                    .font(.title.bold())
                                    .foregroundColor(.primary)
                                    .foregroundStyle(.quaternary)
                                
                            case 3 : Text("Pet Amazing")
                                    .font(.title)
                                    .foregroundColor(.black)
                            default : Text("")
                                
                            }
                                
                                
                               
                            }
                                .frame(maxHeight: .infinity)
                                .scaleEffect(scale)
                                .shadow(color: .red.opacity(0.5), radius: 10, x: 5, y: 5)
                        
                        )
                    }
                    
                  
                    .tag(index)
                    
                   
                }
                
               
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            CustomTabIndicator(count: 3, current: $current)
                .padding(.top,20)
            
            
            VStack{
                
                
                Button {
                    
                } label: {
                    HStack{
                        
                        Image(systemName: "applelogo")
                            .font(.system(size: 30, weight: .bold))
                            .foregroundColor(.white)
                        
                        
                        Text("Singn   in   With    Apple")
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .overlay(
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white,lineWidth: 3)
                                    
                                    )
                          
                    )
                   
                }
                
                Button {
                    
                } label: {
                    HStack{
                        
                        Image("google-symbol")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.red)
                            .frame(width: 30, height:30)
                            
                        
                        Text("Singn   in  With   Google")
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .overlay(
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white,lineWidth: 3)
                                    
                                    )
                          
                    )
                   
                }
                
                Button {
                    
                } label: {
                    HStack{
                        
                        Image("email")
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.green)
                            .frame(width: 30, height:30)
                            
                        
                        Text("Singn    in  With   Email  ")
                            .font(.title3.bold())
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                        
                        
                    }
                    .padding(.vertical,10)
                    .padding(.horizontal)
                    .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .overlay(
                                    
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.white,lineWidth: 3)
                                    
                                    )
                          
                    )
                   
                }


            }
            .padding()
            
            HStack{
                
                
                Text("Already Account?")
                    .font(.caption.italic())
                    .foregroundStyle(.gray)
                
                
                Button {
                    
                } label: {
                    Text("Sign in")
                        .font(.title3.bold())
                        .foregroundColor(.black)
                        .underline(true, color: Color.black)
                }

            }
           
          
            
        }
        .background(Color("Gray"))
    }
}

struct HorizonTalMain_Previews: PreviewProvider {
    static var previews: some View {
        HorizonTalMain()
    }
}

struct CustomTabIndicator : View{
    
    var count : Int
    @Binding var current : Int
    
    var body: some View{
        
      
        HStack(spacing:15){
            
            
            ForEach(0..<count,id:\.self){index in
                
                ZStack{
                    
                    if (current - 1) == index{
                        
                        
                        Circle()
                            .fill(Color.black)
                        
                    }
                    
                    else{
                        
                        Circle()
                            .fill(Color.white)
                            .overlay(
                            
                            Circle()
                                .stroke(Color.white,lineWidth: 2)
                            )
                        
                        
                        
                    }
                }
                .frame(width: 10, height: 10)
                
                
                
            }
            }
        }
    
        
            
            
       
        
    }
    

