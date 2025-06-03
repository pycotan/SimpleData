//
//  ContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/01/05.
//

import SwiftUI

struct ContentView: View {
    @State var message:String = "データなし"
    
    var body: some View {
        VStack {
            Label("10回分の平均値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( message )
                .frame(maxWidth: .infinity, minHeight: 80)
            Label("100回分の平均値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( message )
                .frame(maxWidth: .infinity, minHeight: 80)
            Label("100回分の最低値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( message )
                .frame(maxWidth: .infinity, minHeight: 80)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
