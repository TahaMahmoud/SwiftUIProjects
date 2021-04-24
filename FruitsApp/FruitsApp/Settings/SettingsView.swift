//
//  SettingsView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnBoard") private var isOnBoarding: Bool = false
    
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
                    
                    // Restart Application
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, You can restart the application by toggle the switch in this box, That way it starts the OnBoard process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .font(.footnote)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .multilineTextAlignment(.leading)
                        
                        
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("RESTARTED")
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("RESTART")
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
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
