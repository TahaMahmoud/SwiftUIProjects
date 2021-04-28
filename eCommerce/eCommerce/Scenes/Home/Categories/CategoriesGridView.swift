//
//  CategoriesGridView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct CategoriesGridView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {

                Section(header: SectionView(rotateClockWise: false),
                        footer: SectionView(rotateClockWise: true)) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })
        
    }
}

struct CategoriesGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(backgroundColor)
    }
}
