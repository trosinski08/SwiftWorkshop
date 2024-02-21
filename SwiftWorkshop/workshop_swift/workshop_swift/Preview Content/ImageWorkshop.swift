//
//  ImageWorkshop.swift
//  workshop_swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct ImageWorkshop: View {
    var body: some View {
//        Image(systemName: "sun.max.fill")
//            .font(.headline)
//            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        
    Image("icon")
        .resizable()
        .aspectRatio(contentMode:.fill)
        .frame(width: 300, height: 600)
    }
}

#Preview {
    ImageWorkshop()
}
