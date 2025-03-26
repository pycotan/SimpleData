//
//  AddInputView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI

struct AddInputView: View {
    var body: some View {
        Button(action: {
            print("tap buton")
        }) {
            Text("体重入力")
                .frame(maxWidth: .infinity, minHeight: 60)
        }
        .accentColor(Color.white)
        .background(Color.blue)
        .cornerRadius(.infinity)
        .padding(.horizontal, 30)
    }
}

#Preview {
    AddInputView()
}
