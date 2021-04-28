//
//  DetailsNavigationBarView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct DetailsNavigationBarView: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
        
            Button(action: {}, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                }
            })

        }

    }
}

struct DetailsNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsNavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
