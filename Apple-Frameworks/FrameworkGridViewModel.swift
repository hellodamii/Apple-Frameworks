//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Busha on 06/07/2024.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
}
