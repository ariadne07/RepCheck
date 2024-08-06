//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Kaylee Meier on 9/5/23.
//

import SwiftUI


@main
struct LandmarkApp: App {
    @StateObject private var modelData = ModelData()


    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
