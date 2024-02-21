//
//  ContentView.swift
//  workshop_swift
//
//  Created by student on 21.02.24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
        Text("Swift workshop")
        Text("Heilbronn 2024")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(Color.blue)
        Text("Hello, world!")
//        }
//        .padding()
    }
}

#Preview {
    ContentView()
}
