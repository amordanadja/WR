//
//  ContentView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 48/255, green: 63/255, blue: 129/255).ignoresSafeArea()
            ElementView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
