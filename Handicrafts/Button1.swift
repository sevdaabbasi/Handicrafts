//
//  Button1.swift
//  Handicrafts
//
//  Created by Sevda Abbasi on 5.11.2023.
//

import SwiftUI

struct PrimaryButton: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color("Color1"))
            .cornerRadius(50)
    }
}
