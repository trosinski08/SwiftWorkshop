//
//  ScrollWorkshop.swift
//  swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct ScrollWorkshop: View {
    var body: some View {
        ScrollView{
            ForEach(0..<10){index in//right mouse does not work add another view later
                ScrollView(.horizontal)
                {
                    ForEach(0..<20){index in
                        Rectangle()
                            .fill(Color.white)
                            .cornerRadius(30)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(width: 200, height: 150)
                            .padding()
                    }
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}
#Preview {
    ScrollWorkshop()
}
