//
//  ChatBotApp.swift
//  ChatBot
//
//  Created by Victor Zarzar on 10/02/23.
//

import SwiftUI
import Firebase

@main
struct ChatBotApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
