//
//  StartBottonView.swift
//  FruitsApp
//
//  Created by mac on 4/21/21.
//

import SwiftUI

struct StartBottonView: View {
    
    // MARK: PROPERTIES
    @AppStorage("isOnBoard") var isOnBoard: Bool?
    
    // MARK: BODY
    var body: some View {
        Button(action: {
            isOnBoard = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //: Button
        .accentColor(.white)
    }
}

// MARK: PREVIEW

struct StartBottonView_Previews: PreviewProvider {
    static var previews: some View {
        StartBottonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
