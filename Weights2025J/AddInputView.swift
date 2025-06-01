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
    @State var dateText = ""
    @State var nowDate = Date()
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "YYYY/MM/dd(E)HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "ja_jp")
    }
    
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
            Text( dateText.isEmpty ? "\(dateFormatter.string(from: nowDate))" : dateText)
                .frame(maxWidth: .infinity, minHeight: 60)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                        self.nowDate = Date()
                        dateText = "\(dateFormatter.string(from: nowDate))"
                    }
                }
            Label("１ヶ月の平均体重", systemImage: "figure.walk.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.gray)
            Text( message )
                    .frame(maxWidth: .infinity, minHeight: 60)
        }.padding()
    }
}

#Preview {
    AddInputView()
}
