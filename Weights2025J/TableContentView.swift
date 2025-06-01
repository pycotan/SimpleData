//
//  TableContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI
import SwiftData

struct TableContentView: View {
    @Query private var weightDataList: [WeightData]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            List{ ForEach(Array(weightDataList.enumerated()), id: \.offset) { index, weightData in
                HStack {
                    Text(String(weightData.weightNum))
                    Spacer()
                    Text(weightData.weightDate, format: .dateTime.month(.wide).day().year())
                }
            }}}
    }
}

#Preview {
    TableContentView()
        .modelContainer(for: WeightData.self, inMemory: true)
}
