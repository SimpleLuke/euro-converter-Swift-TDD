//
//  ViewModel.swift
//  Demo
//
//  Created by Luke Lai on 08/05/2023.
//

import Foundation
import UIKit

final class ViewModel: ObservableObject{
    @Published var text = ""
    @Published var convertedText = "$0"
    private let converter = Converters()
    
    func convertMoeny(){
        self.convertedText = converter.convertEuroToUSD(euro: text)
        self.hideKeyboard()
    }
    
    private func hideKeyboard(){
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

