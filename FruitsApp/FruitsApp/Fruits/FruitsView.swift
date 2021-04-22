//
//  ContentView.swift
//  FruitsApp
//
//  Created by mac on 4/21/21.
//

import SwiftUI

struct FruitsView: View {
    
    // MARK:- Properties
    var fruits: [Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    // MARK:- Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailsView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings = true
                }){
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        }
        
    }
}

struct FruitsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsView(fruits: fruitsData)
    }
}
