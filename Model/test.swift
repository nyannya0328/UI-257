//
//  test.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct test: View {
    
    @State var show = false
    
    
    var body: some View {
        
       
        
        
        
        VStack{

            Image("p1")
                 .resizable()
                 .aspectRatio(contentMode: .fill)
                
                 .clipShape(Circle())
                 .scaleEffect(show ? 0.3 : 1)




        }
        

        .padding()
           
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
