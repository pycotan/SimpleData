//
//  TabBarContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI

struct TabBarContentView: View {
    // タブの選択項目を保持する
        @State var selection = 1
    
    var body: some View {
        TabView(selection: $selection) {

                    AddInputView()   // Viewファイル①
                        .tabItem {
                            Label("Page1", systemImage: "1.circle")
                        }
                        .tag(1)

                    TableContentView()   // Viewファイル②
                        .tabItem {
                            Label("Page2", systemImage: "2.circle")
                        }
                        .tag(2)

                    FirstContentView()  // Viewファイル③
                        .tabItem {
                            Label("Page3", systemImage: "3.circle")
                        }
                        .tag(3)

                }
    }
}

#Preview {
    TabBarContentView()
}
