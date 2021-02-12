//
//  UserInfo.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
public class UserInfo: NSObject {
     var sessionID     :String?
    class var sharedInstance: UserInfo {
           struct Static {
               static let instance: UserInfo = UserInfo()
           }
           return Static.instance
       }
    func setUserInfo(userInfo:LoginResponse) -> Void {
        if let sessionID  = userInfo.sessionID as? String {
              self.sessionID = sessionID
          }
    }
}
