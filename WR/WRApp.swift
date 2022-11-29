//
//  WRApp.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 03/11/22.
//

import SwiftUI

@main
struct WRApp: App {
    
    @State var tapped: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if !tapped {
                ContentView()
                    .onTapGesture {
                        tapped = true
                    }
            } else {
                NavigationStack {
                    EscolhaDoUsuarioView()
                }
            }
        }
    }
}
