//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Likhitha Mandapati on 8/23/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        
#if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
#endif
    }
}
