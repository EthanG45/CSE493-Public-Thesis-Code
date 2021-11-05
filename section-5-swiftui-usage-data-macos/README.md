# 1. Section 5 SwiftUI Usage Data macOS

- [1. Section 5 SwiftUI Usage Data macOS](#1-section-5-swiftui-usage-data-macos)
  - [1.1. Section Details](#11-section-details)
  - [1.2. Included Files](#12-included-files)
  - [1.3. Want to Read My Thesis?](#13-want-to-read-my-thesis)

## 1.1. Section Details
The data in this section was obtained by running the scripts from the prior section as follows.

```zsh
sudo ./detect-swiftui.sh /System > system-results.txt                    
sudo ./detect-swiftui.sh /Applications > app-results.txt                 
sudo ./detect-swiftui.sh /usr > usr-results.txt                          
sudo ./detect-swiftui.sh /System/Applications > system-app-results.txt              
sudo ./detect-swiftui.sh /opt > opt-results.txt                                                                   

sudo ./detect-objc-swift-swiftui.sh /System > system-results2.txt                 
sudo ./detect-objc-swift-swiftui.sh /System/Applications > system-app-results2.txt
sudo ./detect-objc-swift-swiftui.sh /usr > usr-results2.txt         
sudo ./detect-objc-swift-swiftui.sh /Applications > app-results2.txt
sudo ./detect-objc-swift-swiftui.sh /opt > opt-results2.txt
```

## 1.2. Included Files
1. `apps/`

    * The `app-results.txt` in `apps` shows what Apple apps installed in the /Applications directory use SwiftUI.
    * The `app-results2.txt` in `apps` shows what Apple apps installed in the /Applications directory use Objective-C, Swift, and SwiftUI.

2. `opt-usr/`

    * The `opt-results.txt` in `opt-usr` shows what binaries included in the ARM64 opt directory use SwiftUI (always going to be none).
    * The `opt-results2.txt` in `opt-usr` shows what binaries included in the ARM64 opt directory use Objective-C, Swift, and SwiftUI.
    * The `usr-results.txt` in `opt-usr` shows what binaries included in the Intel x86-64 usr directory use SwiftUI (always going to be none).
    * The `usr-results2.txt` in `opt-usr` shows what binaries included in the Intel x86-64 usr directory use Objective-C, Swift, and SwiftUI.

3. `system/`

    * The `system-results.txt` in `system` shows what Apple system files in the /System directory use SwiftUI.
    * The `system-results2.txt` in `system` shows what Apple system files in the /System directory use Objective-C, Swift, and SwiftUI..

4. `system/apps/`

    * The `system-app-results.txt` in `system/apps` shows what Apple apps installed in the /System/Applications directory use SwiftUI.
    * The `system-app-results2.txt` in `system/apps` shows what Apple apps installed in the /System/Applications directory use Objective-C, Swift, and SwiftUI.

`macos-analysis.md` is a file enumerating the SwiftUI files from `system/apps/` discussed in my paper.

Note my paper and defense mainly discuss the contents of `system/apps/` thus the other content here is unique to this repository.

## 1.3. Want to Read My Thesis?
My thesis will be published on the [ASU Barrett Thesis Collection](https://keep.lib.asu.edu/collections/130827) following its completion.
