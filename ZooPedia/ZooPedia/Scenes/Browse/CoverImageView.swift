//
//  CoverImageView.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import SwiftUI

struct CoverImageView: View {
    
    var covers: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(covers) { cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
