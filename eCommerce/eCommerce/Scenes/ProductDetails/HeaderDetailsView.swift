//
//  HeaderDetailsView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct HeaderDetailsView: View {
    
    @EnvironmentObject var shop: Shop

    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)

        })
        .foregroundColor(.white)
    }
}

struct HeaderDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
            .environmentObject(Shop())
    }
}
