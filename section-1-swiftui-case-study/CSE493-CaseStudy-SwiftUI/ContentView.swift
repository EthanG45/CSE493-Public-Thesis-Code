//
//  ContentView.swift
//  CSE493-CaseStudy-SwiftUI
//
//  Created by Ethan Gilchrist.
//  Generate the main app view with a list.
//

import SwiftUI
import Combine

struct ContentView: View {
    @EnvironmentObject var caseStudyData: CaseStudyData
    @State private var showModal = false
    
    var body: some View {
        NavigationView{
            List {
                ForEach(caseStudyData.frameworks) { Framework in
                    NavigationLink(destination: FrameworkDetail(framework: Framework)){
                        FrameworkRow(framework: Framework)
                    }
                }
                .onDelete(perform: remove)
            }
            .navigationBarTitle(Text("Frameworks"))
            .navigationBarItems(
                trailing:
                    HStack {
                        Button(action: { self.showModal = true }, label: {
                            Image(systemName: "plus.circle.fill")
                                .renderingMode(.original)
                                .font(.title)
                        }).sheet(isPresented: $showModal) {
                            FrameworkAddSheet()
                        }
                    }
            )
        }
    }
    
    func remove(at offsets: IndexSet) {
        caseStudyData.frameworks.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .environmentObject(CaseStudyData())
        ContentView()
            .preferredColorScheme(.dark)
            .environmentObject(CaseStudyData())
        ContentView()
            .previewDevice("iPad mini (6th generation)")
            .preferredColorScheme(.dark)
            .environmentObject(CaseStudyData())
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
