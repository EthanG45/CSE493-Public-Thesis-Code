iOS 13 has only 9 references to SwiftUI

```
/System/Library/AccessibilityBundles/SwiftUI.axbundle/SwiftUI |Objective-C
/System/Library/Frameworks/SwiftUI.framework/SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/LegalAndRegulatorySettingsPrivate.framework/LegalAndRegulatorySettingsPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/SettingsUIKitPrivate.framework/SettingsUIKitPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/WallpaperSettings.framework/WallpaperSettings |Objective-C|Swift|SwiftUI
/usr/lib/swift/libswiftUIKit.dylib |Objective-C|Swift|C++
```

The only relevant portion is

```
/System/Library/PrivateFrameworks/Settings/WallpaperSettings.framework/WallpaperSettings |Objective-C|Swift|SwiftUI
```

iOS 13 has one framework in SwiftUI

```
WallpaperSettings.framework
```

iOS 14 has 65 references to SwiftUI

```
/Applications/MobilePhone.app/MobilePhone |Objective-C|Swift|SwiftUI
/Applications/MobileSlideShow.app/PlugIns/PhotosReliveWidget.appex/PhotosReliveWidget |Objective-C|Swift|SwiftUI
/Applications/MobileTimer.app/PlugIns/WorldClockWidget.appex/WorldClockWidget |Objective-C|Swift|SwiftUI
/Applications/SharingViewService.app/SharingViewService |Objective-C|Swift|SwiftUI
/Applications/SleepLockScreen.app/SleepLockScreen |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/AppleTV.app/PlugIns/TVWidgetExtension.appex/TVWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Fitness.app/PlugIns/FitnessWidget.appex/FitnessWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Maps.app/PlugIns/GeneralMapsWidget.appex/GeneralMapsWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/MobileCal.app/PlugIns/CalendarWidgetExtension.appex/CalendarWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/MobileNotes.app/PlugIns/com.apple.mobilenotes.WidgetExtension.appex/com.apple.mobilenotes.WidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Music.app/PlugIns/MusicWidgets.appex/MusicWidgets |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/News.app/PlugIns/NewsTag.appex/NewsTag |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/News.app/PlugIns/NewsToday2.appex/NewsToday2 |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/Podcasts.app/PlugIns/PodcastsWidget.appex/PodcastsWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Reminders.app/PlugIns/RemindersWidgetExtension.appex/RemindersWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/SequoiaTranslator.app/SequoiaTranslator |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/Shortcuts.app/Shortcuts |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Stocks.app/PlugIns/StocksWidget.appex/StocksWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Tips.app/PlugIns/TipsSwift.appex/TipsSwift |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Weather.app/PlugIns/WeatherWidget.appex/WeatherWidget |Objective-C|Swift|SwiftUI
/System/Library/AccessibilityBundles/SwiftUI.axbundle/SwiftUI |Objective-C
/System/Library/Frameworks/_AuthenticationServices_SwiftUI.framework/_AuthenticationServices_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_AVKit_SwiftUI.framework/_AVKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_HomeKit_SwiftUI.framework/_HomeKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_MapKit_SwiftUI.framework/_MapKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_QuickLook_SwiftUI.framework/_QuickLook_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_SceneKit_SwiftUI.framework/_SceneKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_SpriteKit_SwiftUI.framework/_SpriteKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_StoreKit_SwiftUI.framework/_StoreKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/SwiftUI.framework/SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/UIKit.framework/PlugIns/com.apple.UIKit.ColorPicker.appex/com.apple.UIKit.ColorPicker |Objective-C|Swift|SwiftUI|C++
/System/Library/Frameworks/WidgetKit.framework/WidgetKit |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/CalendarWidget.framework/CalendarWidget |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoCore.framework/ChronoCore |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoCore.framework/Support/chronod |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoKit.framework/ChronoKit |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ComplicationDisplay.framework/ComplicationDisplay |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/GameCenterUI.framework/GameCenterUI |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/GameCenterUI.framework/PlugIns/GameCenterDashboardExtension.appex/GameCenterDashboardExtension |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/PhotosUIApps.framework/PhotosUIApps |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/LegalAndRegulatorySettingsPrivate.framework/LegalAndRegulatorySettingsPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/SettingsUIKitPrivate.framework/SettingsUIKitPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/WallpaperSettings.framework/WallpaperSettings |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/WorkflowEditor.framework/WorkflowEditor |Objective-C|Swift|SwiftUI|C++
/System/Library/PrivateFrameworks/WorkflowUICore.framework/WorkflowUICore |Objective-C|Swift|SwiftUI
/usr/lib/swift/libswiftUIKit.dylib |Objective-C|Swift|C++
```

Of which the only relevant portion is

```
/Applications/MobilePhone.app/MobilePhone |Objective-C|Swift|SwiftUI
/Applications/MobileSlideShow.app/PlugIns/PhotosReliveWidget.appex/PhotosReliveWidget |Objective-C|Swift|SwiftUI
/Applications/MobileTimer.app/PlugIns/WorldClockWidget.appex/WorldClockWidget |Objective-C|Swift|SwiftUI
/Applications/SharingViewService.app/SharingViewService |Objective-C|Swift|SwiftUI
/Applications/SleepLockScreen.app/SleepLockScreen |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/AppleTV.app/PlugIns/TVWidgetExtension.appex/TVWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Fitness.app/PlugIns/FitnessWidget.appex/FitnessWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Maps.app/PlugIns/GeneralMapsWidget.appex/GeneralMapsWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/MobileCal.app/PlugIns/CalendarWidgetExtension.appex/CalendarWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/MobileNotes.app/PlugIns/com.apple.mobilenotes.WidgetExtension.appex/com.apple.mobilenotes.WidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Music.app/PlugIns/MusicWidgets.appex/MusicWidgets |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/News.app/PlugIns/NewsTag.appex/NewsTag |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/News.app/PlugIns/NewsToday2.appex/NewsToday2 |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/Podcasts.app/PlugIns/PodcastsWidget.appex/PodcastsWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Reminders.app/PlugIns/RemindersWidgetExtension.appex/RemindersWidgetExtension |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/SequoiaTranslator.app/SequoiaTranslator |Objective-C|Swift|SwiftUI|C++
/private/var/staged_system_apps/Shortcuts.app/Shortcuts |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Stocks.app/PlugIns/StocksWidget.appex/StocksWidget |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Tips.app/PlugIns/TipsSwift.appex/TipsSwift |Objective-C|Swift|SwiftUI
/private/var/staged_system_apps/Weather.app/PlugIns/WeatherWidget.appex/WeatherWidget |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_AuthenticationServices_SwiftUI.framework/_AuthenticationServices_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_AVKit_SwiftUI.framework/_AVKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_HomeKit_SwiftUI.framework/_HomeKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_MapKit_SwiftUI.framework/_MapKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_QuickLook_SwiftUI.framework/_QuickLook_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_SceneKit_SwiftUI.framework/_SceneKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_SpriteKit_SwiftUI.framework/_SpriteKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/_StoreKit_SwiftUI.framework/_StoreKit_SwiftUI |Objective-C|Swift|SwiftUI
/System/Library/Frameworks/UIKit.framework/PlugIns/com.apple.UIKit.ColorPicker.appex/com.apple.UIKit.ColorPicker |Objective-C|Swift|SwiftUI|C++
/System/Library/Frameworks/WidgetKit.framework/WidgetKit |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/CalendarWidget.framework/CalendarWidget |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoCore.framework/ChronoCore |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoCore.framework/Support/chronod |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ChronoKit.framework/ChronoKit |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/ComplicationDisplay.framework/ComplicationDisplay |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/GameCenterUI.framework/GameCenterUI |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/GameCenterUI.framework/PlugIns/GameCenterDashboardExtension.appex/GameCenterDashboardExtension |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/PhotosUIApps.framework/PhotosUIApps |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/LegalAndRegulatorySettingsPrivate.framework/LegalAndRegulatorySettingsPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/SettingsUIKitPrivate.framework/SettingsUIKitPrivate |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/Settings/WallpaperSettings.framework/WallpaperSettings |Objective-C|Swift|SwiftUI
/System/Library/PrivateFrameworks/WorkflowEditor.framework/WorkflowEditor |Objective-C|Swift|SwiftUI|C++
/System/Library/PrivateFrameworks/WorkflowUICore.framework/WorkflowUICore |Objective-C|Swift|SwiftUI
```

iOS 14 has 43 things in SwiftUI

```
MobilePhone.app
SharingViewService.app
SleepLockScreen.app
SequoiaTranslator.app
Shortcuts.app

PhotosReliveWidget.appex
WorldClockWidget.appex
TVWidgetExtension.appex
FitnessWidget.appex
GeneralMapsWidget.appex
CalendarWidgetExtension.appex
com.apple.mobilenotes.WidgetExtension.appex
MusicWidgets.appex
NewsTag.appex
NewsToday2.appex
PodcastsWidget.appex
RemindersWidgetExtension.appex
StocksWidget.appex
TipsSwift.appex
WeatherWidget.appex
GameCenterDashboardExtension.appex

com.apple.UIKit.ColorPicker.appex

_AuthenticationServices_SwiftUI.framework
_AVKit_SwiftUI.framework
_HomeKit_SwiftUI.framework
_MapKit_SwiftUI.framework
_QuickLook_SwiftUI.framework
_SceneKit_SwiftUI.framework
_SpriteKit_SwiftUI.framework
_StoreKit_SwiftUI.framework
WidgetKit.framework
CalendarWidget.framework
ChronoCore.framework
chronod
ChronoKit.framework
ComplicationDisplay.framework
GameCenterUI.framework
PhotosUIApps.framework
LegalAndRegulatorySettingsPrivate.framework
SettingsUIKitPrivate.framework
WallpaperSettings.framework
WorkflowEditor.framework
```