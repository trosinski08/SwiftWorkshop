//
//  BackgroundAndOverlayWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct BackgroundAndOverlayWorkshop: View {
    var body: some View {
//        Rectangle()
//            .fill(Color.green)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//            .background(
//                Gradient(colors: [Color.red,
//                                  Color.green])
////                Rectangle()
////                    .fill(Color.red)
////                    .frame(width: 150, height: 150)
//            )
//            .overlay(alignment: .bottomTrailing,
//                     content: {
//                Circle()
//                    .fill(Color.purple)
//                    .frame(width: 50, height: 50)
//                })
        Circle()
            .fill(
                LinearGradient(colors: [Color.red, Color.green, Color.purple], startPoint: .topLeading,
                               endPoint: .bottomTrailing)
            )
                .frame(width:150, height: 150)
            
        
    }
}

#Preview {
    BackgroundAndOverlayWorkshop()
}
