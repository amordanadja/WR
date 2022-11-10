//
//  VogaisView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 10/11/22.
//

import SwiftUI

struct VogaisView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors:
                [Color(red: 34/255, green: 66/255, blue: 128/255),
                 Color(red: 132/255, green: 174/255, blue: 220/255),
                 Color(red: 255/255, green: 255/255, blue: 255/255)]),
                           
                startPoint: .topLeading,
                endPoint: .bottomLeading)
                .ignoresSafeArea(.all, edges: .all)
        }
    }
}

struct VogaisView_Previews: PreviewProvider {
    static var previews: some View {
        VogaisView()
    }
}
