//
//  TrackingSDK.swift
//  TrackingSDK
//
//  Created by Trịnh Xuân Minh on 16/11/2023.
//

import UIKit
import AppTrackingTransparency
import AppsFlyerLib

/// Supports MMP AppsFlyer and ATT Tracking integration.
/// ```
/// import TrackingSDK
/// ```
/// - Warning: Available for Swift 5.3, Xcode 12.5 (macOS Big Sur). Support from iOS 13.0 or newer.
public class TrackingSDK {
  public static var shared = TrackingSDK()
  
  public func initialize(devKey: String, appID: String, timeout: Double? = nil) {
    AppsFlyerLib.shared().appsFlyerDevKey = devKey
    AppsFlyerLib.shared().appleAppID = appID
    
    if let timeout {
      AppsFlyerLib.shared().waitForATTUserAuthorization(timeoutInterval: timeout)
    }
    
    NotificationCenter
      .default
      .addObserver(self,
                   selector: #selector(didBecomeActiveNotification),
                   name: UIApplication.didBecomeActiveNotification,
                   object: nil)
    
    AppsFlyerLib.shared().start(completionHandler: { (dictionary, error) in
      guard error == nil else {
        print("TrackingSDK: \(String(describing: error))!")
//        TrackingFireBase.shared.pushLogEvenFireBase(evenName: .NoConnectAF)
        return
      }
      print("TrackingSDK: \(String(describing: dictionary))")
//      TrackingFireBase.shared.pushLogEvenFireBase(evenName: .ConnectDoneAF)
      return
    })
  }
  
  public func debug(enable: Bool) {
    AppsFlyerLib.shared().isDebug = enable
  }
}

extension TrackingSDK {
  @objc private func didBecomeActiveNotification() {
    AppsFlyerLib.shared().start()
  }
}
