//
//  StepsApp.swift
//  Steps
//
//  Created by Eric on 17/06/2023.
//

import SwiftUI

@main
struct StepsApp: App {
    var healthVM = HealthKitViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(healthVM)
        }
    }
}
