//
//  VogaisView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 10/11/22.
//

import SwiftUI

struct VogaisView: View {
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors:
                                                    [Color(red: 34/255, green: 66/255, blue: 128/255),
                                                     Color(red: 132/255, green: 174/255, blue: 220/255),
                                                     Color(red: 255/255, green: 255/255, blue: 255/255)]),
                               
                               startPoint: .topLeading,
                               endPoint: .bottomLeading)
                .ignoresSafeArea(.all, edges: .all)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                        .frame(width: 350, height: 70)
                    Text("O ALFABETO É COMPOSTO POR \nVOGAIS, QUE SÃO:")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            HStack {
                Button {
                    print("Imagem tapped!")
                } label: {
                    Image("A")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                }
                Button {
                    print("Image tapped!")
                } label: {
                    Image("E")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
            }
        }
    }
}

struct VogaisView_Previews: PreviewProvider {
    static var previews: some View {
        VogaisView()
    }
}
