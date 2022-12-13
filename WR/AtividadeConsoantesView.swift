//
//  AtividadeConsoantesView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 13/12/22.
//

import SwiftUI

struct AtividadeConsoantesView: View {
    let consoante1 = "W"
    let consoante2 = "C"
    let consoante3 = "B"
    let consoante4 = "S"
    
    
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
                VStack{
                    HStack {
                        Spacer()
                        button_de_som()
                            .padding()
                    }
                    Spacer()
                }
                VStack(spacing:-50){
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .frame(width: 350, height: 70)
                        Text("ATIVIDADE")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    .padding(30)
                    Text("ESSE SOM É DE QUAL VOGAL?")
                        .font(.system(size: 20))
                        .padding(60)
                    
                    circle_do_som()
                    HStack(spacing:50){
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(consoante1)")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .bold()
                        }
                        .frame(width: 100, height: 220)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(consoante2)")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .bold()
                        }
                        .frame(width: 100, height: 220)
                    }
                    
                    HStack(spacing:50){
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(consoante3)")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .bold()
                        }
                        .frame(width: 100, height: 220)
                        
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(consoante4)")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .bold()
                        }
                        .frame(width: 100, height: 220)
                    }
                }
            }
        }
    }
}
        
        struct AtividadeConsoantesView_Previews: PreviewProvider {
            static var previews: some View {
                AtividadeConsoantesView()
            }
        }
