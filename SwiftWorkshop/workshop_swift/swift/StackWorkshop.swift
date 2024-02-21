//
//  StackWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct StackWorkshop: View {
    var body: some View {
        // Vstack - vertical stack
        //Hstack - horizontal stack
        //Zstack z index back to front
        
        HStack(alignment: .top, content: {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.purple)
                .frame(width: 100, height: 100)
        })
    }
//        ZStack(
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.purple)
//                .frame(width: 100, height: 100)
//               })
//           }
}

#Preview {
    StackWorkshop()
}
