//
//  SectionView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockWise: Bool
    
    var body: some View {
        VStack(spacing: 0 ) {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            
            Spacer()

        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(backgroundColor)
    }
}
