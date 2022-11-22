//
//  AtividadeVogaisView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 18/11/22.
//

import SwiftUI

struct AtividadeVogaisView: View {
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
                    Text("ATIVIDADE")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                   
                      
                }
            }
           
            
        }
    }
    
    struct AtividadeVogaisView_Previews: PreviewProvider {
        static var previews: some View {
            AtividadeVogaisView()
        }
    }
}
