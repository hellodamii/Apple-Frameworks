//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Busha on 06/07/2024.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.medium)
            .frame(width: 360, height: 60)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

#Preview {
    AFButton(title: "Test Title")
}
