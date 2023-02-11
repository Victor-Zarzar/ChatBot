//
//  Message.swift
//  ChatBot
//
//  Created by Victor Zarzar on 10/02/23.
//

import Foundation

struct Message: Identifiable, Codable {
    var id: String
    var text: String
    var received: Bool
    var timestamp: Date
}
