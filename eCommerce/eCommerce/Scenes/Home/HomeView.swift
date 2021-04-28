//
//  ContentView.swift
//  eCommerce
//
//  Created by mac on 4/27/21.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    // Navigation Bar View
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            
                            // Featured
                            FeaturedTabView()
                                .padding(.vertical, 20)
                            
                            // Categories
                            CategoriesGridView()
                            
                            // Products
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 15, pinnedViews: [], content: {
                                
                                ForEach(products) { product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            withAnimation(.easeOut) {
                                                shop.selectedProduct = product
                                                shop.showingProduct = true

                                            }
                                        }
                                }
                                
                            })
                            .padding(15)
                            
                            // Brands
                            TitleView(title: "Brands")

                            BrandsGridView()
                            
                            // Footer
                            FooterView()
                                .padding(.horizontal)
                        }
                    })
                    
                }
                .background(backgroundColor.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailsView()
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Shop())
    }
}
