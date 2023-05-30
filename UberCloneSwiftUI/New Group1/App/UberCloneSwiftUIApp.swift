//
//  UberCloneSwiftUIApp.swift
//  UberCloneSwiftUI
//
//  Created by OSlash on 24/05/23.
//

import SwiftUI

@main
struct UberCloneSwiftUIApp: App {
    @StateObject var locationViewModel = LocationSearchViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationViewModel)
        }
    }
}
