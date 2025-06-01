//
//  TableContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/03/26.
//

import SwiftUI
import SwiftData

struct TableContentView: View {
    @Query(sort: [SortDescriptor(\WeightData.weightDate, order: .reverse)]) private var weightDataList: [WeightData]
    @Environment(\.modelContext) private var modelContext
    private var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "M月d日 HH時mm分"
        // 日本語フォーマットに設定
        return formatter
    }
    
    var body: some View {
        NavigationStack {
            List{ ForEach(Array(weightDataList.enumerated()), id: \.offset ) { index, weightData in
                HStack {
                    Text(String(weightData.weightNum))
                    Spacer()
                    Text(weightData.weightDate, formatter: dateFormatter)
                }
                .swipeActions {
                            Button(role: .destructive) {
                                deleteItem(weightData)
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                        }
            }}}
    }
    
    func deleteItem(_ item: WeightData) {
        modelContext.delete(item)
    }
}

#Preview {
    TableContentView()
        .modelContainer(for: WeightData.self, inMemory: true)
}
