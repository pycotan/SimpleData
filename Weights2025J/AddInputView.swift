//
//  AddInputView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI

struct AddInputView: View {
    @State var message:String = "データなし"
    @State var double: Double = 0.0
    @FocusState var isFocused: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                print("tap buton")
                isFocused = false
                message = String(double)
            }){
                Text("体重入力")
                    .frame(maxWidth: .infinity, minHeight: 60)
            }
            .accentColor(Color.white)
            .background(Color.blue)
            .cornerRadius(.infinity)
            .padding(.horizontal, 50)
            TextField("", value: $double, format: .number)
                                .textFieldStyle(.roundedBorder)
                    // ここでキーボードを数字のみにしている
                    .keyboardType(.decimalPad)
                    .padding(20)
                    .multilineTextAlignment(.center)
                    .focused($isFocused)
            VStack {
                Label("１ヶ月の平均体重", systemImage: "figure.walk.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
                Text( message )
                    .frame(maxWidth: .infinity, minHeight: 60)
            }.padding()
        }.padding()
    }
}

#Preview {
    AddInputView()
}
