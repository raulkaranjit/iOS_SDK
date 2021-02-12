//
//  CellPayBankAccountResponse.swift
//  MyFramework
//
//  Created by Cellcom on 7/27/20.
//

import Foundation
struct BankAccountResponse: Codable {
    let status, sessionExpired: Bool
    public let payload: Payloads
}

// MARK: - Payload
struct Payloads: Codable {
     public let memberDetailsList: [MemberDetailsList]

    enum CodingKeys: String, CodingKey {
        case memberDetailsList = "MemberDetailsList"
    }
}

// MARK: - MemberDetailsList
struct MemberDetailsList: Codable {
    let memberID, memberRecordID: Int
    let memberName, userName, accountNo: String
    let memberDetailsListDefault: Bool

    enum CodingKeys: String, CodingKey {
        case memberID = "memberId"
        case memberRecordID = "memberRecordId"
        case memberName = "memberName"
        case userName = "userName"
        case accountNo = "accountNo"
        case memberDetailsListDefault = "default"
    }
}
