//
//  AtividadeAlfabetoView.swift
//  WR
//
//  Created by Iara de Matos Galdino on 13/12/22.
//

import SwiftUI

struct AtividadeAlfabetoView: View {
    let letra1 = "U"
    let letra2 = "B"
    let letra3 = "I"
    let letra4 = "O"
    let letra5 = "E"
    
    var body: some View {
        VStack{
            ZStack {
                LinearGradient(gradient: Gradient(colors:
                                                    [Color(red: 34/255, green: 66/255, blue: 128/255),
                                                     Color(red: 132/255, green: 174/255, blue: 220/255),
                                                     Color(red: 255/255, green: 255/255, blue: 255/255)]),
                               
                               startPoint: .topLeading,
                               endPoint: .bottomLeading)
                .ignoresSafeArea(.all, edges: .all)
                
                VStack(spacing:-25){
                    HStack {
                        Spacer()
                        button_de_som(soundName: "atividadealfabeto")
                            .padding()
                    }
                    Spacer()
                    
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .frame(width: 350, height: 70)
                        Text("ATIVIDADE")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        
                    }
                    .padding(40)
                    Text("QUAL DAS LETRAS ABAIXO NÃO FAZEM PARTE DO GRUPO DAS VOGAIS?")
                        .font(.system(size: 20))
                        .padding(80)
                    
                    HStack(spacing:30){
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(letra1)")
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
                            
                            Text("\(letra2)")
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
                            
                            Text("\(letra3)")
                                .foregroundColor(.white)
                                .font(.system(size: 50))
                                .bold()
                        }
                        .frame(width: 100, height: 220)
                        
                        
                        
                    }
                    
                    HStack(spacing:30){
                        ZStack {
                            Rectangle()
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .aspectRatio(1, contentMode: .fit)
                                .cornerRadius(20)
                            
                            Text("\(letra4)")
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
                            
                            Text("\(letra5)")
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

struct AtividadeAlfabetoView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadeAlfabetoView()
    }
}
