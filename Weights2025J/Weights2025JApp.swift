//
//  Weights2025JApp.swift
//  Weights2025J
//
//  Created by HLRK on 2025/01/05.
//

import SwiftUI

@main
struct Weights2025JApp: App {
    var body: some Scene {
        WindowGroup {
            TabBarContentView()
        }
        .modelContainer(for: WeightData.self)
    }
}
