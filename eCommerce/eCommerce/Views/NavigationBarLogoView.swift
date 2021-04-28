//
//  NavigationBarLogoView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct NavigationBarLogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("e")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Commerce")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)

        }
    }
}

struct NavigationBarLogoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarLogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
