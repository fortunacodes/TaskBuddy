//
//  HideKeyboardExtension.swift
//  TaskBuddy
//
//  Created by Jesús  Fortuna on 18/6/23.
//

import Foundation
import SwiftUI

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
