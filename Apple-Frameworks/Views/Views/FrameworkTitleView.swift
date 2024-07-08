//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Busha on 08/07/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 80, height: 80)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.regular)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
       
    }
}
#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
