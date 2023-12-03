//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Altaha Ansari on 01/12/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
