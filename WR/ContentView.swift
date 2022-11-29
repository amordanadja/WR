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
            ElementView()
        }
    }
    struct vogais: View {
        var body: some View{
            VStack{
                TabView{
                    ContentView()
                    EscolhaDoUsuarioView()
                    VogaisView()
                    AtividadeVogaisView()
                    ConsoantesUIView()
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
            }.background().ignoresSafeArea()
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
