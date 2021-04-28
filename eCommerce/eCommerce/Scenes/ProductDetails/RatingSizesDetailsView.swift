//
//  RatingSizesDetailsView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct RatingSizesDetailsView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {

        HStack(alignment: .top, spacing: 3, content: {
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { index in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.gray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })
        
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(sizes, id: \.self) { size in
                        Button(action: {}, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 1.0)
                                )
                                
                        })
                    }
                })

            })
        
        })
        
        
    }
}

struct RatingSizesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingSizesDetailsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
