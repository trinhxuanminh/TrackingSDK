////
////  LogEventManager.swift
////  
////
////  Created by Trịnh Xuân Minh on 16/11/2023.
////
//
//import Foundation
//import FirebaseAnalytics
//
//class LogEventManager {
//  static let shared = LogEventManager()
//  
//  func log(event: Event) {
//    Analytics.logEvent(event.name, parameters: event.parameters)
//  }
//}
//
//enum Event {
//  case connectedAppsFlyer
//  case noConnectAppsFlyer
//  
//  var name: String {
//    switch self {
//    case .connectedAppsFlyer:
//      return "Connected_AppsFlyer"
//    case .noConnectAppsFlyer:
//      return "NoConnect_AppsFlyer"
//    }
//  }
//  
//  var parameters: [String: Any]? {
//    return nil
//  }
//}
