//
//  Post.swift
//  SocialMedia
//
//  Created by Aryan Gupta on 24/07/23.
//

import SwiftUI
import FirebaseFirestoreSwift


struct Post:  Identifiable {
    @DocumentID var id: String?
    var text: String
    var imageURL: URL?
    var imageReferenceID: String = UUID().uuidString
    var publishedDate: Date = Date()
    var likedIDs: [String] = []
    var dislikedIDs: [String] = []
    var userName: String
    var userUID: String = UUID().uuidString
    var userProfileURL: URL
    
    enum CodingKeys: CodingKey{
        case id
        case imageURL
        case imageReferenceID
        case publishedDate
        case likedIDs
        case dislikedIDs
        case userName
        case userUID
        case userProfileURL
    }
}
