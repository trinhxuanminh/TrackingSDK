//
//  LogEventManager.swift
//  
//
//  Created by Trịnh Xuân Minh on 16/11/2023.
//

import Foundation
import FirebaseAnalytics

class LogEventManager {
  static let shared = LogEventManager()
  
  func log(event: Event) {
    Analytics.logEvent(event.name, parameters: event.parameters)
  }
}

enum Event {
  case connectedAppsFlyer
  case noConnectAppsFlyer
  case agreeTracking
  case noTracking
  
  var name: String {
    switch self {
    case .connectedAppsFlyer:
      return "Connected_AppsFlyer"
    case .noConnectAppsFlyer:
      return "NoConnect_AppsFlyer"
    case .agreeTracking:
      return "Agree_Tracking"
    case .noTracking:
      return "No_Tracking"
    }
  }
  
  var parameters: [String: Any]? {
    return nil
  }
}
