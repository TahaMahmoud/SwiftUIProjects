//
//  AddToCartButtonView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct AddToCartButtonView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Spacer()
            Text("Add To Cart")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()

        })
        .padding(15)
        .background(
            Color( red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

struct AddToCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
