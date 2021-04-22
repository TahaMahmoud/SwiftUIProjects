//
//  LinkView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
