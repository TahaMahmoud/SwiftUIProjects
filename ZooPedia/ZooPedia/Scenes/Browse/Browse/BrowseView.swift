//
//  ContentView.swift
//  ZooPedia
//
//  Created by Taha on 4/24/21.
//

import SwiftUI

struct BrowseView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding(.bottom, 20)
                
                ForEach(animals) { animal in
                    NavigationLink( destination: AnimalDetailsView(animal: animal)){
                            AnimalListItemView(animal: animal)
                        }
                    
                }
            }
            .navigationBarTitle("ZooPedia", displayMode: .large)

        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
