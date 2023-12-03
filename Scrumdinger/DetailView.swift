//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Altaha Ansari on 03/12/23.
//

import SwiftUI

struct DetailView: View {
    var scrum: DailyScrum
    var body: some View {
        List {
            Section(header: Text("Meeting Info")){
                NavigationLink(destination: MeetingView()){
                    Label("Start Meeting", systemImage: "timer")
                        .font(.headline)
                        .foregroundColor(.accentColor)
                }
                HStack {
                    Label("Length", systemImage: "clock")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                }
                .accessibilityElement(children: .combine)
                HStack {
                    Label("Theme", systemImage: "paintpalette")
                    Spacer()
                    Text(scrum.theme.name)
                        .padding(4)
                        .foregroundColor(scrum.theme.accentColor)
                        .background(scrum.theme.mainColor)
                        .cornerRadius(5)
                }
            }
            Section(header: Text("Attendees")){
                ForEach(scrum.attendees){ attendee in
                    Label(attendee.name, systemImage: "person")
                }
            }
        }.navigationTitle(scrum.title)
    }
}

struct DetailViewPreview: PreviewProvider {
    static var previews: some View  {
        NavigationStack {
            DetailView(scrum: DailyScrum.sampleData[0])
        }
    }
}
