//
//  VerticalScrollCrousel.swift
//  UI-257
//
//  Created by nyannyan0328 on 2021/07/12.
//

import SwiftUI

struct VerticalScrollCrousel<Content:View>: UIViewRepresentable {
    
    var content : Content
    
    init(@ViewBuilder content : @escaping()->Content){
        
        self.content = content()
    }
    func makeUIView(context: Context) -> UIScrollView {
        
        let scroll = UIScrollView()
        
        SetUp(Scroll: scroll)
        
        return scroll
        
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
    
    func SetUp(Scroll : UIScrollView){
        
        Scroll.isPagingEnabled = true
        Scroll.showsVerticalScrollIndicator = false
        
        let hostView = UIHostingController(rootView: content)
        
        hostView.view.backgroundColor = .clear
        
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        
        let constains = [
        
            hostView.view.topAnchor.constraint(equalTo: Scroll.topAnchor),
            hostView.view.bottomAnchor.constraint(equalTo: Scroll.bottomAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: Scroll.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: Scroll.trailingAnchor),
            hostView.view.widthAnchor.constraint(equalTo: Scroll.widthAnchor),
          
        
        
        ]
        Scroll.addSubview(hostView.view)
        Scroll.addConstraints(constains)
        
        
    }
    
    
}


