//
//  FrameworkRow.swift
//  CSE335-Lab4
//
//  Created by Ethan Gilchrist.
//  Generate the Framework Row for displaying in the list.
//

import SwiftUI

struct FrameworkRow: View {
    var framework: Framework
    var body: some View {
        HStack {
            Image(framework.frameworkImageName)
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(5)
            Text(framework.frameworkName)
            Spacer()
        }
    }
}

struct FrameworkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FrameworkRow(framework: caseStudyData[0])
            FrameworkRow(framework: caseStudyData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
