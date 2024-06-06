//
//  User.swift
//  SocialMedia
//
//  Created by Aryan Gupta on 22/07/23.
//

import SwiftUI
import FirebaseFirestoreSwift

struct User: Codable , Identifiable {
    @DocumentID var id: String?
    var username: String
    var userBio: String
    var userBioLink: String
    var userUID: String = UUID().uuidString
    var userEmail: String
    var userProfileURL: URL
    
    enum CodingKeys: CodingKey{
        case id
        case username
        case userBio
        case userBioLink
        case userEmail
        case userProfileURL
    }
}
