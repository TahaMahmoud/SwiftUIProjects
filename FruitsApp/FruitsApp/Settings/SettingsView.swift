//
//  SettingsView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView() {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {

                    // About App Section
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "FruitsApp", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("FruitsApp is a simple iOS application, it retrieves Fruits from free Local Data and display them for the user, and allow the user to view fruit details.")
                                .font(.footnote)
                        }
                    } // GroupBox
                    
                    // *---------------------------------*
                    
                    // About Developer Section
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Developer", labelImage: "apps.iphone")
                    ) {
                        SettingsInfoRowView(titleText: "Developer", valueText: "Taha Mahmoud")
                        SettingsInfoRowView(titleText: "Github", linkLabel: "TahaMahmoud", linkDestination: "https://github.com/TahaMahmoud")
                        SettingsInfoRowView(titleText: "LinkedIn", linkLabel: "Taha Mahmoud", linkDestination: "https://www.linkedin.com/in/engtahamahmoud/")
                        SettingsInfoRowView(titleText: "Facebook", linkLabel: "Taha Mahmoud", linkDestination: "https://www.facebook.com/Eng.Taha.Mahmoud/")
                    } // GroupBox

                    
                    

                } // VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                             Image(systemName: "xmark")
                        }
                )
                .padding()
            } // Scroll View
        } // Navigation View
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
