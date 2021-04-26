//
//  AnimalDetailsView.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import SwiftUI

struct AnimalDetailsView: View {
    
    var animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                // Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .lineLimit(1)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .padding(.horizontal)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                
                // Gallery
                Group {
                    // Heading
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilders In Pictures")
                    
                    // Gallery
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did You Know?")
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)

                // Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All About \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                    HeadingView(headingImage: "map", headingText: "Locations")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingView(headingImage: "book.vertical", headingText: "Learn More")
                    ExternalLinkView(animal: animal)
                }
                .padding(.horizontal)
                
            }
            .navigationBarTitle("Learn More About \(animal.name)", displayMode: .inline)
        }
    }
}

struct AnimalDetailsView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")

    static var previews: some View {
        NavigationView {
            AnimalDetailsView(animal: animals[0])
        }
    }
}
