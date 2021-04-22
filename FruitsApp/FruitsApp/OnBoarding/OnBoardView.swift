//
//  OnBoardView.swift
//  FruitsApp
//
//  Created by mac on 4/21/21.
//

import SwiftUI

struct OnBoardView: View {
    
    // MARK:- Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK:- Properties
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { fruit in
                FruitCardView(fruit: fruit)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
    
}

//MARK:- Preview
struct OnBoardView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardView()
    }
}
