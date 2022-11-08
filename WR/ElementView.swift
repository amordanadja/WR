//
//  ElementView.swift
//  WR
//
//  Created by Yorrana de Oiveira Souza on 08/11/22.
//

import SwiftUI

struct ElementView: View {
    var body: some View {
        VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 1000,height: 500)
                    .padding().frame(height: 200)
                Text("SEJA BEM VINDO\nAO W&R ")
                .multilineTextAlignment(.center)
                .font(.custom("Body", size: 24))
                .foregroundColor(.white)
            
            }
    }
}

struct ElementView_Previews: PreviewProvider {
    static var previews: some View {
        ElementView()
    }
}
