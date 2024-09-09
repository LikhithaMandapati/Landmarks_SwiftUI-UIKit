//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by Likhitha Mandapati on 9/9/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        ContentView()
            .environmentObject(modelData)
    }
}
