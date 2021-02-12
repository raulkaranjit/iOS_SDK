//
//  ConfirmPaymentResult.swift
//  MyFramework
//
//  Created by Cellcom on 7/28/20.
//

import Foundation
public struct ConfirmPaymentResponse: Codable {
    public let status, sessionExpired: Bool
    public let payload: ConfirmPaymentPayload
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case sessionExpired = "sessionExpired"
        case payload = "payload"
    }
}

// MARK: - Payload
public struct ConfirmPaymentPayload: Codable {
    public let confirmPaymentResult: ConfirmPaymentResult
    
    enum CodingKeys: String, CodingKey {
        case confirmPaymentResult = "ConfirmPaymentResult"
    }
}

// MARK: - ConfirmPaymentResult
public struct ConfirmPaymentResult: Codable {
    public let id: Int
    public let pending: Bool
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case pending = "pending"
    }
}
