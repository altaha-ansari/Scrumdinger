//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Altaha Ansari on 01/12/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
