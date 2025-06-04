//
//  ContentView.swift
//  Weights2025J
//
//  Created by HLRK on 2025/01/05.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: [SortDescriptor(\WeightData.weightNum, order: .forward)]) private var weightDataArray: [WeightData]
    //@Environment(\.modelContext) private var modelContext
    
    @State var message01:String = "データなし"
    
    @State var average01:Int = 0
    @State var max01:Double = 0
    @State var min01:Double = 0
    @State var median:Double = 0
    
    @State var numArray: Array<Double> = []
    
    var body: some View {
        VStack {
            Label("中央値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( String(median) )
                .frame(maxWidth: .infinity, minHeight: 60)
            Label("平均値（整数）", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( String(average01) )
                .frame(maxWidth: .infinity, minHeight: 60)
            Label("最低値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( String(min01) )
                .frame(maxWidth: .infinity, minHeight: 60)
            Label("最大値", systemImage: "figure.walk.circle.fill")
                .font(.largeTitle)
                .foregroundColor(.gray)
            Text( String(max01) )
                .frame(maxWidth: .infinity, minHeight: 60)
        }
        .onAppear(){
            numArray = []
            
            for i in 0..<weightDataArray.count {
                numArray.append(weightDataArray[i].weightNum)
            }
            max01 = numArray.max() ?? 0
            min01 = numArray.min() ?? 0
            
            // 配列のコピーを作成し、ソートする
            let sortedNumArray = numArray.sorted()
            // 配列の要素数
            let count = sortedNumArray.count
            
            if(count != 0){
                // 平均
                average01 = (Int(sortedNumArray.reduce(0, +))/count)
                
                // 中央値
                // 要素数が奇数の場合
                if count % 2 != 0 {
                    median = sortedNumArray[count / 2]
                } else {
                    // 要素数が偶数の場合
                    let middle1 = sortedNumArray[count / 2 - 1]
                    let middle2 = sortedNumArray[count / 2]
                    median = (Double(middle1) + Double(middle2)) / 2.0
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
