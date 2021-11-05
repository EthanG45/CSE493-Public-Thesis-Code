//
//  LibraryContent.swift
//  CSE493-CaseStudy-SwiftUI
//
//  Created by Ethan Gilchrist.
//  Generate custom library components for the UIKit drag and drop enthusiasts.
//

import Foundation
import SwiftUI

let PlaceholderFramework = Framework(frameworkName: "React Native", frameworkDescription: "test", frameworkImageName: "React")

struct CaseStudyLibraryContent: LibraryContentProvider {
    @LibraryContentBuilder
        public var views: [LibraryItem] {
            [LibraryItem(FrameworkRow(framework: PlaceholderFramework), visible: true, title: "Framework Row", category: .control),
             LibraryItem(FrameworkImage(image: "SwiftUI"), title: "Framework Image", category: .other)]
        }
}
