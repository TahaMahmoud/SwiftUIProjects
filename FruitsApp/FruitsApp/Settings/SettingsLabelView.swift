//
//  SettingsLabelView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }

    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "FruitsApp", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
    }
}
