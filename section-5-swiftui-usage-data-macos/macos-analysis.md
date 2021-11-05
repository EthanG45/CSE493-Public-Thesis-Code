/system/applications contains SwiftUI in the following

```
/System/Applications/FindMy.app/Contents/MacOS/FindMy
/System/Applications/FindMy.app/Contents/PlugIns/FindMyWidgetItems.appex/Contents/MacOS/FindMyWidgetItems
/System/Applications/FindMy.app/Contents/PlugIns/FindMyWidgetPeople.appex/Contents/MacOS/FindMyWidgetPeople
/System/Applications/FindMy.app/Contents/PlugIns/FindMyWidgetIntentsItems.appex/Contents/MacOS/FindMyWidgetIntentsItems
/System/Applications/FindMy.app/Contents/PlugIns/FindMyWidgetIntentsPeople.appex/Contents/MacOS/FindMyWidgetIntentsPeople
/System/Applications/Books.app/Contents/MacOS/Books
/System/Applications/Books.app/Contents/Frameworks/JSApp.framework/Versions/A/JSApp
/System/Applications/Books.app/Contents/Frameworks/BookCore.framework/Versions/A/BookCore
/System/Applications/Notes.app/Contents/MacOS/Notes
/System/Applications/Notes.app/Contents/PlugIns/com.apple.Notes.WidgetExtension.appex/Contents/MacOS/com.apple.Notes.WidgetExtension
/System/Applications/Notes.app/Contents/PlugIns/com.apple.Notes.QuickLookExtension.appex/Contents/MacOS/com.apple.Notes.QuickLookExtension
/System/Applications/Notes.app/Contents/PlugIns/com.apple.Notes.SharingExtension.appex/Contents/MacOS/com.apple.Notes.SharingExtension
/System/Applications/News.app/Contents/PlugIns/NewsTag.appex/Contents/MacOS/NewsTag
/System/Applications/News.app/Contents/PlugIns/NewsEngagementExtension.appex/Contents/MacOS/NewsEngagementExtension
/System/Applications/News.app/Contents/PlugIns/NewsToday2.appex/Contents/MacOS/NewsToday2
/System/Applications/News.app/Contents/PlugIns/NewsTodayIntents.appex/Contents/MacOS/NewsTodayIntents
/System/Applications/Podcasts.app/Contents/MacOS/Podcasts
/System/Applications/Podcasts.app/Contents/PlugIns/PodcastsWidget.appex/Contents/MacOS/PodcastsWidget
/System/Applications/Podcasts.app/Contents/Frameworks/PodcastsStoreUI.framework/Versions/A/PodcastsStoreUI
/System/Applications/Podcasts.app/Contents/Frameworks/NowPlayingUI.framework/Versions/A/NowPlayingUI
/System/Applications/Podcasts.app/Contents/Frameworks/AppStoreKit.framework/Versions/A/AppStoreKit
/System/Applications/Stocks.app/Contents/MacOS/Stocks
/System/Applications/Stocks.app/Contents/PlugIns/StocksDetailIntents.appex/Contents/MacOS/StocksDetailIntents
/System/Applications/Stocks.app/Contents/PlugIns/StocksWidget.appex/Contents/MacOS/StocksWidget
/System/Applications/Contacts.app/Contents/MacOS/Contacts
/System/Applications/Shortcuts.app/Contents/MacOS/Shortcuts
/System/Applications/Shortcuts.app/Contents/PlugIns/QuickLookExtension.appex/Contents/MacOS/QuickLookExtension
/System/Applications/Maps.app/Contents/MacOS/Maps
/System/Applications/Photos.app/Contents/PlugIns/PhotosReliveWidget.appex/Contents/MacOS/PhotosReliveWidget
/System/Applications/VoiceMemos.app/Contents/MacOS/VoiceMemos
/System/Applications/Reminders.app/Contents/PlugIns/RemindersWidgetExtension.appex/Contents/MacOS/RemindersWidgetExtension
/System/Applications/Calendar.app/Contents/PlugIns/CalendarWidgetExtension.appex/Contents/MacOS/CalendarWidgetExtension
```

Of which these 32 lines are relevant:

```
// apps
FindMy.app
Books.app
Notes.app
Podcasts.app
Stocks.app
Contacts.app
Shortcuts.app
Maps.app
VoiceMemos.app

// widgets
FindMyWidgetItems.appex
FindMyWidgetPeople.appex
com.apple.Notes.WidgetExtension.appex
PodcastsWidget.appex
StocksWidget.appex
RemindersWidgetExtension.appex
CalendarWidgetExtension.appex
PhotosReliveWidget.appex

// intents
FindMyWidgetIntentsItems.appex
FindMyWidgetIntentsPeople.appex
NewsTodayIntents.appex
StocksDetailIntents.appex

// extensions and tools
com.apple.Notes.QuickLookExtension.appex
com.apple.Notes.SharingExtension.appex
NewsTag.appex
NewsEngagementExtension.appex
NewsToday2.appex
QuickLookExtension.appex

// frameworks
JSApp.framework
BookCore.framework
PodcastsStoreUI.framework
NowPlayingUI.framework
AppStoreKit.framework
```