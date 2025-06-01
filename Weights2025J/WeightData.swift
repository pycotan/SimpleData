//
//  WeightData.swift
//  Weights2025J
//
//  Created by HLRK on 2025/06/01.
//

import Foundation

import SwiftData

@Model
final class WeightData {
    var title: String
    var finished = false
    var weightNum:Double
    var weightDate:Date

    init(title: String, weightNum: Double, weightDate:Date) {
        self.title = title
        self.weightNum = weightNum
        self.weightDate = weightDate
    }
}
