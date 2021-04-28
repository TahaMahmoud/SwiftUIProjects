//
//  DetailsTopView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct DetailsTopView: View {
    
    @State private var isAnimating: Bool = false
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 6, content: {
            VStack {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)

        })
        .onAppear(perform: {
            withAnimation(.easeIn(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct DetailsTopView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsTopView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
