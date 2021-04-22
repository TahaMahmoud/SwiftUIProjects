//
//  SettingsInfoRowView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct SettingsInfoRowView: View {
    
    var titleText: String
    var valueText: String? = nil
    
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    
    var body: some View {
        VStack {
            
            Divider().padding(.vertical, 4)
            HStack {
                Text(titleText)
                    .foregroundColor(.gray)
                Spacer()
                if valueText != nil {
                    Text(valueText!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsInfoRowView(titleText: "Developer", valueText: "Taha Mahmoud")
                .padding()
        }
    }
}
