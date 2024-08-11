//
//  ContentView.swift
//  IOS Test Video App
//
//  Created by Ansh Shukla on 28/06/24.
//

import SwiftUI

struct ContentView: View {
        var body: some View {
            ScrollView(content: {
                VStack {
                    ForEach(0..<10, id: \.self) { count in
                        ReelView()
                    }
                }
            })
            .background(.black)
            .ignoresSafeArea()
        }
}

#Preview {
    ContentView()
}
