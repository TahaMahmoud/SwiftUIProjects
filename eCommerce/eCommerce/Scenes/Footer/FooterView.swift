//
//  FooterView.swift
//  eCommerce
//
//  Created by mac on 4/27/21.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Taha Mahmoud\nAll right reserved")
              .font(.footnote)
              .fontWeight(.bold)
              .foregroundColor(.gray)
              .multilineTextAlignment(.center)
              .layoutPriority(1)
        }
        .padding()
        
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
            .background(backgroundColor)
    }
}
