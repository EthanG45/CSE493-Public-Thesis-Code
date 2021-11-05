//
//  Framework.swift
//  CSE493-CaseStudy-SwiftUI
//
//  Created by Ethan Gilchrist.
//  Setup some basic dummy data and a FrameWork type.
//

import SwiftUI
import Foundation

var caseStudyData:[Framework] = initData()

struct Framework:Hashable, Codable, Identifiable {
    var id = UUID()
    let frameworkName: String
    let frameworkDescription: String
    let frameworkImageName: String
}

func initData() -> [Framework] {
    var localCaseStudyData:[Framework] = []
    let swiftuiDesc = "SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and as little code as possible. With SwiftUI, you can bring even better experiences to all users, on any Apple device, using just one set of tools and APIs."
    let uikitDesc = "The UIKit framework provides the required infrastructure for your iOS or tvOS apps. It provides the window and view architecture for implementing your interface, the event handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop needed to manage interactions among the user, the system, and your app. Other features offered by the framework include animation support, document support, drawing and printing support, information about the current device, text management and display, search support, accessibility support, app extension support, and resource management."
    let reactDesc = "Create native apps for Android and iOS using React. React Native combines the best parts of native development with React, a best-in-class JavaScript library for building user interfaces. Use a little—or a lot. You can use React Native today in your existing Android and iOS projects or you can create a whole new app from scratch."
    let mitDesc = "MIT App Inventor is an intuitive, visual programming environment that allows everyone – even children – to build fully functional apps for Android and iOS smartphones and tablets. Those new to MIT App Inventor can have a simple first app up and running in less than 30 minutes. And what's more, our blocks-based tool facilitates the creation of complex, high-impact apps in significantly less time than traditional programming environments. The MIT App Inventor project seeks to democratize software development by empowering all people, especially young people, to move from technology consumption to technology creation."
    let touchDesc = "TouchDevelop was Microsoft's attempt at creating an introductory programming framework. It was deprecated in 2019. The description originally said the following: Create apps everywhere on all your devices! For Windows Phone and the web. In the TouchDevelop programming environment you write scripts by tapping on the screen. You do not need a separate PC or keyboard. Scripts can perform various tasks similar to regular apps. Any TouchDevelop user can install, run, edit, publish scripts. You can share scripts with other people by publishing them to the TouchDevelop script bazaar, or by submitting them as an app to the Windows Store or Windows Phone Store."
    let framework1 = Framework(frameworkName: "SwiftUI", frameworkDescription: swiftuiDesc, frameworkImageName: "SwiftUI")
    let framework2 = Framework(frameworkName: "UIKit", frameworkDescription: uikitDesc, frameworkImageName: "UIKit")
    let framework3 = Framework(frameworkName: "React Native", frameworkDescription: reactDesc, frameworkImageName: "React")
    let framework4 = Framework(frameworkName: "MIT App Inventor", frameworkDescription: mitDesc, frameworkImageName: "MIT")
    let framework5 = Framework(frameworkName: "Microsoft TouchDevelop", frameworkDescription: touchDesc, frameworkImageName: "TouchDevelop")
            
    localCaseStudyData.append(framework1)
    localCaseStudyData.append(framework2)
    localCaseStudyData.append(framework3)
    localCaseStudyData.append(framework4)
    localCaseStudyData.append(framework5)
    return localCaseStudyData
}
