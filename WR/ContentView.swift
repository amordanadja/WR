//
//  ContentView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 03/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Image(systemName: "globe")
                    .font(.title)
                    .padding(3)
                Text("Ola mundo")
            }
            .font(.largeTitle)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
