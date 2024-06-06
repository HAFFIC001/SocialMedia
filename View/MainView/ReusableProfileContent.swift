//
//  ReusableProfileContent.swift
//  SocialMedia
//
//  Created by Aryan Gupta on 23/07/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct ReusableProfileContent: View {
    var user: User
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack{
                HStack(spacing: 12) {
                    WebImage(url:user.userProfileURL).placeholder{
                        Image("NullProfile")
                            .resizable()
                        
                    }
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(user.username)
                            .font(.title3)
                            .fontWeight(.semibold)
                        
                        
                        Text(user.userBio)
                            .font(.caption)
                            .foregroundColor(.gray)
                            .lineLimit(3)
                         
                        
                        if let bioLink = URL(string: user.userBioLink){
                            Link(user.userBioLink, destination: bioLink)
                                .font(.callout)
                                .tint(.blue)
                                .lineLimit(1)
                            
                        }
                    }
                    .hAlign(.leading)
                }
                
                
                Text("Post's")
                    .font(.title2)
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                    .hAlign(.leading)
                    .padding(.vertical, 15)
            }
        }
    }
}
