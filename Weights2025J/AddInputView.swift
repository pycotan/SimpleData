//
//  AddInputView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI

struct AddInputView: View {
    @Binding var selectedTab: Int
    @State var message:String = "データなし"
    @State var double: Double = 0.0
    @FocusState var isFocused: Bool
    @State var dateText = ""
    @State var nowDate = Date()
    private let dateFormatter = DateFormatter()
    @State var weightData = WeightData(title: "",weightNum: 0,weightDate: Date())
    @Environment(\.modelContext) private var modelContext
    
    init(selectedTab:Binding<Int>) {
        dateFormatter.dateFormat = "YYYY/MM/dd(E)HH:mm:ss"
        dateFormatter.locale = Locale(identifier: "ja_jp")
        self._selectedTab = selectedTab
    }
    
    var body: some View {
        VStack {
            Button(action: {
                print("tap buton")
                isFocused = false
                message = String(double)
                weightData = WeightData(title: "", weightNum: double, weightDate: nowDate)
                modelContext.insert(weightData)
                self.selectedTab  = 2
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
        }
        .frame(width: UIScreen.main.bounds.width,
               height: UIScreen.main.bounds.height)
        .contentShape(RoundedRectangle(cornerRadius: 10))
        .onTapGesture {
            isFocused = false
        }.padding()
    }
}

#Preview {
    AddInputView(selectedTab: .constant(1))
}
