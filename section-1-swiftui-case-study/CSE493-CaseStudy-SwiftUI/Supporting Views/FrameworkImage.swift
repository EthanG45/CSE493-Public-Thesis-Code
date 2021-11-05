//
//  FrameworkImage.swift
//  CSE335-Lab4
//
//  Created by Ethan Gilchrist.
//  Generate the framework image for displaying on the detail page.
//

import SwiftUI

struct FrameworkImage: View {
    var image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .cornerRadius(25)
            .shadow(radius: 5)
            .frame(width: 200.0, height: 200.0)
    }
}

struct FrameworkImage_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkImage(image: "SwiftUI")
    }
}
