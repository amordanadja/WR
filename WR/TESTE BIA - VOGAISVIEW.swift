//
//  TESTE BIA - VOGAISVIEW.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 17/11/22.
//

import SwiftUI

struct TESTE_BIA___VOGAISVIEW: View {
    private var vogais: [String] = ["A", "E", "I", "O","U"]
    private let colors: [Color] = [.blue, .white]
    
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns) {
                    ForEach(vogais, id: \.self) { vogal in
                        ZStack {
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(colors[vogal])
                        }
                    }
                }
            }
        }
    }
}

struct TESTE_BIA___VOGAISVIEW_Previews: PreviewProvider {
    static var previews: some View {
        TESTE_BIA___VOGAISVIEW()
    }
}
