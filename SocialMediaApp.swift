//
//  SocialMediaApp.swift
//  SocialMedia
//
//  Created by Aryan Gupta on 22/07/23.
//

import SwiftUI
import Firebase

@main
struct SocialMediaApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
