//
//  FirstContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/01/05.
//

import Foundation

import SwiftUI

struct FirstContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.gray)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.gray)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
            }
            
            Text("Weight Diary")
                .font(.system(size: 50, weight: .black))
                .foregroundColor(.white)
                            .stroke(color: .pink, width: 2)
            
            HStack{
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.gray)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.gray)
                    .padding()
                Image(systemName: "heart.circle.fill")
                    .scaleEffect(3)
                    .foregroundStyle(.pink)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    FirstContentView()
}
