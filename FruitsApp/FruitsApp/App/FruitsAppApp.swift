//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by mac on 4/21/21.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    
    @AppStorage("isOnBoard") var isOnBoard: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnBoard {
                OnBoardView()
            } else {
                ContentView()
            }
        }
    }
}
