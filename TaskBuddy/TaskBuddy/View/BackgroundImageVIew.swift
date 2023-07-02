//
//  BackgroundImageVIew.swift
//  TaskBuddy
//
//  Created by Jesús  Fortuna on 18/6/23.
//

import SwiftUI

struct BackgroundImageVIew: View {
    //MARK: - PROPERTY

    //MARK: - BODY
    var body: some View {
        Image("rocket")
            .antialiased(true)
            .resizable()
            .scaledToFill()
            .ignoresSafeArea(.all)
    }
}

//MARK: - PREVIEW
struct BackgroundImageVIew_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageVIew()
    }
}
