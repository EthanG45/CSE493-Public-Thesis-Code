//
//  FrameworkAddSheet.swift
//  CSE335-Lab4
//
//  Created by Ethan Gilchrist.
//  Generate the modal for adding frameworks.
//

import SwiftUI

struct FrameworkAddSheet: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var caseStudyData: CaseStudyData
    @State var frameworkNameInput: String = ""
    @State var frameworkDescInput: String = ""
    @State private var invalidInput: Bool = false
    @State private var nameReceived: Bool = false
    @State private var descReceived: Bool = false
    
    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Text("Framework name")
                    TextField("i.e. SwiftUI", text: $frameworkNameInput, onEditingChanged: {
                        (changed) in self.nameReceived = true
                    })
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                }.padding()
                Text("Framework description")
                TextField("i.e. SwiftUI all about better apps, less code, and deploying on many platforms.", text: $frameworkDescInput, onEditingChanged: {
                    (changed) in self.descReceived = true
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                Button(action: {
                    if self.nameReceived && self.descReceived{
                        let newFramework = Framework(frameworkName: frameworkNameInput, frameworkDescription: frameworkDescInput, frameworkImageName: "SwiftUI")
                        caseStudyData.frameworks.append(newFramework)
                        self.presentationMode.wrappedValue.dismiss()
                    } else {
                        invalidInput = true
                    }
                }, label: {
                    HStack{
                        Text("💻")
                            .foregroundColor(Color.white)
                        Image(systemName: "plus.rectangle.on.folder.fill")
                            .font(.largeTitle)
                    }
                    .padding()
                    .background(Color.green)
                    .cornerRadius(20)
                })
                .alert(isPresented: $invalidInput) {
                    Alert(title: Text("Invalid Input"), message: Text("A framework name and description must be provided!"), dismissButton: .default(Text("Yikes")))
                }
            }
            .navigationBarTitle("Add Framework")
            .navigationBarItems(
                trailing:
                    HStack {
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.red)
                        })
                    }
            )
        }
    }
}

struct FrameworkAddSheet_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkAddSheet()
    }
}
