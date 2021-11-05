//
//  CSE493_CaseStudy_SwiftUIApp.swift
//  CSE493-CaseStudy-SwiftUI
//
//  Created by Ethan Gilchrist.
//  Render the app. Provide hardcoded data.
//

import SwiftUI

@main
struct CSE493_CaseStudy_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(CaseStudyData())
        }
    }
}
