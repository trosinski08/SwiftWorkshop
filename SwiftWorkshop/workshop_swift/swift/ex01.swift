//
//  ex01.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct ex01: View {
    var body: some View {
        VStack {
            Image(systemName: "heart.fill")
                .font(.title)
                .foregroundColor(.white)
                .background(
            Circle()
                .fill(
                    LinearGradient(colors: [Color.red ,Color.blue], startPoint: .topLeading,
                                   endPoint: .bottomTrailing))
                    .frame(width:100, height: 100)
                    .shadow(radius: 15)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35)
                            .overlay(
                        Text("S")
                        .foregroundColor(.white)
                        .font(.headline))
                    .shadow(color: Color.gray ,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/),
                    alignment: .bottomTrailing
            ))
        }
    }
}

#Preview {
    ex01()
}
