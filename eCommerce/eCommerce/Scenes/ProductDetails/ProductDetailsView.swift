//
//  ProductDetailsView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            // NavBar
            DetailsNavigationBarView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)

            // Header
            HeaderDetailsView()
                .padding(.horizontal)
            
            // Details Top
            DetailsTopView()
                .padding(.horizontal)
                .zIndex(1)

            // Details Buttom
            
            VStack(alignment: .center, spacing: 0, content: {
                // Rating + Sizes
                RatingSizesDetailsView()
                    .padding(.top, -10)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                // Quanitiy + Favourites
                QuantityView()
                    .padding(.vertical, 10)
                
                // Add To Cart
                AddToCartButtonView()
                    .padding(.bottom, 20)
                
            })
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top, -105)
            )
            
        })
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
