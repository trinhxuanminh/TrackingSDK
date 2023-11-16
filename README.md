# TrackingSDK

A package to help supports MMP AppsFlyer and ATT tracking integration on your **iOS** app.
- For Swift 5.3, Xcode 12.5 (macOS Big Sur) or later.
- Support for apps from iOS 13.0 or newer.

## Installation

### Swift Package Manager

The Swift Package Manager is a tool for managing the distribution of **Swift** code. To use `TrackingSDK` with Swift Package Manger, add it to dependencies in your `Package.swift`.
```swift
  dependencies: [
    .package(url: "https://github.com/trinhxuanminh/TrackingSDK.git")
]
```

## Get started
Add key - value to the file `Info.plist`.
```swift
  <key>FIREBASE_ANALYTICS_COLLECTION_ENABLED</key>
  <true/>
  <key>NSUserTrackingUsageDescription</key>
  <string>This will help us optimize the content and improve the app experience for you</string>
  <key>NSAdvertisingAttributionReportEndpoint</key>
  <string>https://appsflyer-skadnetwork.com/</string>
```

## Usage
Firstly, import `TrackingSDK`.
```swift
import TrackingSDK
```

### 1. Parameter setting

#### initialize()
Initialize, start tracking once permission is granted.

##### Parameters:
- devKey: The AppsFlyer dev key.
- appID: The Apple App ID (without the id prefix).
- timeout: Set `timeout` as such that app users have enough time to see and engage with the ATT prompt. 
```swift
TrackingSDK.shared.initialize(devKey: String, appID: String, timeout: Double? = nil)
```

### 2. Control
#### debug()
You can enable debug logs.
```swift
TrackingSDK.shared.debug(enable: Bool)
```

#### status()
This function indicates whether tracking authorization needs to be displayed.
```swift
TrackingSDK.shared.status() -> Bool
```

#### requestAuthorization()
This function will display the tracking authorization request.
```swift
TrackingSDK.shared.requestAuthorization(completed: Handler?)
```

## License
### [ProX Global](https://proxglobal.com)
### Copyright (c) Trịnh Xuân Minh 2023 [@trinhxuanminh](minhtx@proxglobal.com)
