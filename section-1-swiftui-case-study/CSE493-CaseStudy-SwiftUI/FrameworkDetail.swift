//
//  FrameworkDetail.swift
//  CSE335-Lab4
//
//  Created by Ethan Gilchrist.
//  Generate the framework detail page.
//

import SwiftUI

struct FrameworkDetail: View {
    @EnvironmentObject var caseStudyData: CaseStudyData
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            
            FrameworkImage(image: framework.frameworkImageName)
                .offset(x: 0, y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(framework.frameworkName)
                    .font(.title)
                HStack(alignment: .top) {
                    Text(framework.frameworkDescription)
                        .font(.subheadline)
                    Spacer()
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(framework.frameworkName), displayMode: .inline)
    }
}

struct FrameworkDetail_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetail(framework: caseStudyData[0])
            .environmentObject(CaseStudyData())
    }
}
