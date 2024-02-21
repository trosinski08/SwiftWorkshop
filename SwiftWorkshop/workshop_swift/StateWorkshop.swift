//
//  StateWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct StateWorkshop: View {
    @State var background: Color = Color.red
    
    var body: some View {
        ZStack{
            background
            
//            ButtonView(background: $background)
            
//            Button(action: {
//            background = Color.green
//            }, label: {
//                Text("Button")
//                    .foregroundColor(.white)
//                    .frame(width: 200, height: 100)
//                    .background(Color.blue)
//                    .cornerRadius(20)
//                    .shadow(color: .green, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                    .padding()
//            })
        }
    }
}


#Preview {
    StateWorkshop()
}
