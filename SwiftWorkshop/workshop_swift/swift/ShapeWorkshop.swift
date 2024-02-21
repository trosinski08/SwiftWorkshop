//
//  ShapeWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct ShapeWorkshop: View {
    var body: some View {
        Circle()
            .fill( Color.blue)
            .frame(width: 100)
        
        Rectangle()
            .fill(Color.red)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 300)
        
    }
    
}

#Preview {
    ShapeWorkshop()
}
