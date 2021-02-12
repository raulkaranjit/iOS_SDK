//
//  APIError.swift
//  CellPay SDK
//
//  Created by Cellcom on 1/8/21.
//  Copyright © 2021 CellPay. All rights reserved.
//

import Foundation

public protocol AError: Error {
    var description: String { get }
}

extension AError {
    var description: String { return "" }
}

public enum APIError: AError {
    case encoding
    case decoding
    case server
    case unreachable
    case unknown
    case sessionTimeOut
    case formFieldError(Decodable )
    case error(_ error: Error )
    case message(_ message: String )
    case signUpLogInresponseError
    case `default`
    
    public var description: String {
        switch self {
        case .encoding:
            return "Error encoding the parameters"
        case .decoding:
            return "Error decoding the parameters"
        case .server:
            return "Server Error!!"
        case .unreachable:
            return "Please check your internet connection"
        case .sessionTimeOut:
            return "Connection Timeout. Slow internet Connection!"
        case .unknown:
            return "Opps! Something went wrong!!"
        case .error(let error):
            return error.localizedDescription
        case .message(let message):
            return message
        case .signUpLogInresponseError:
            return "Somethng went worng. Please login manaually!!"
        default:
            return "Opps! Something went wrong!!"
        }
    }
}
