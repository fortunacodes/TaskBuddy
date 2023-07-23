//
//  CheckboxStyle.swift
//  TaskBuddy
//
//  Created by Jesús  Fortuna on 23/7/23.
//

import SwiftUI

struct CheckboxStyle: ToggleStyle {
    //MARK: - BODY
    func makeBody(configuration: Configuration) -> some View {
        return HStack{
            Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                .foregroundColor(configuration.isOn ? .pink : .primary)
                .font(.system(size: 30, weight: .semibold, design: .rounded))
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            
            configuration.label
        }//: HSTACK
    }
}

//MARK: - PREVIEW
struct CheckboxStyle_Previews: PreviewProvider {
    static var previews: some View {
        Toggle("Placeholder label", isOn: .constant(false))
            .toggleStyle(CheckboxStyle())
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
