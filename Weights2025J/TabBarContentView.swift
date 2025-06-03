//
//  TabBarContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI

struct TabBarContentView: View {
    // タブの選択項目を保持する
    @State var selectedTab: Int = 1
    
    var body: some View {
        TabView(selection: $selectedTab) {

                    AddInputView(selectedTab:$selectedTab)   // Viewファイル①
                        .tabItem {
                            Label("入力", systemImage: "1.circle")
                        }
                        .tag(1)

                    TableContentView()   // Viewファイル②
                        .tabItem {
                            Label("一覧", systemImage: "2.circle")
                        }
                        .tag(2)

                    ContentView()  // Viewファイル③
                        .tabItem {
                            Label("統計", systemImage: "3.circle")
                        }
                        .tag(3)

                }
    }
}

#Preview {
    TabBarContentView()
}
