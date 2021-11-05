//
//  CaseStudyData.swift
//  CSE493-CaseStudy-SwiftUI
//
//  Created by Ethan Gilchrist.
//  Share data across the project. We do this to avoid invoking any more complex APIs like CoreData, as this is a basic case study on SwiftUI UI building.
//

import SwiftUI
import Combine

final class CaseStudyData: ObservableObject  {
    @Published var frameworks = caseStudyData
}
