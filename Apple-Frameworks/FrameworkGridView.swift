//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Damilare on 05/07/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())
                               
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                    }
        
                }
            }
        .navigationTitle("🍎 Frameworks")
            
        }
        
        
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

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
