//
//  ShowButton.swift
//  Handicrafts
//
//  Created by Sevda Abbasi on 5.11.2023.
//

import SwiftUI

struct ShowButton: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ShowButton: ViewModifier{
    @Binding var isShow: Bool
    
    public func body(content: Content) -> some View {
        HStack{
            content
            Button{
                isShow .toggle()
            }label:{
                Image(systemName: isShow ? "eye.fill" : "eye.slash.fill")
                    .foregroundColor(.gray)
            }
        }
    }
}
