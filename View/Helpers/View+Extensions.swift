//
//  View+Extensions.swift
//  SocialMedia
//
//  Created by Aryan Gupta on 23/07/23.
//

import SwiftUI

extension View{
    
    func CloseKeyBoard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
    func DisablewithOpacity(_ condition: Bool) -> some View{
        self
            .disabled(condition)
            .opacity(condition ? 0.6 : 1)
    }
    func HAlign(_ alignment: Alignment)-> some View {
        self
            .frame(maxWidth: .infinity, alignment: alignment)
        
    }
    func VAlign(_ alignment: Alignment)-> some View {
        self
        .frame(maxHeight: .infinity, alignment: alignment)
        
    }
    
    func Border(_ width: CGFloat,_ color: Color)-> some View {
        self
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background{
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .stroke(color, lineWidth: width)
                 
            }
    }
    func FillView(_ color: Color)-> some View {
        self
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background{
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(color)
                 
            }
    }
}
