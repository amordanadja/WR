//
//  EscolhaDoUsuarioView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 10/11/22.
//

import SwiftUI

struct EscolhaDoUsuarioView: View {
    var body: some View {
        ZStack {
            Color(red: 60/255, green: 94/255, blue: 152/255).ignoresSafeArea()
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(red: 255/255, green: 255/255, blue: 255/255))
                        .frame(width: 350, height: 90)
                    Rectangle()
                        .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                        .frame(width: 330, height: 70)
                    Text("ALFABETO")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .font(Font.system(size:30))
                }
                HStack(spacing:-50){
                    Image("yorrana")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 300)
                
                    ZStack{
                        Image(systemName: "message.fill")
                            .font(Font.system(size:180))
                            .foregroundColor(.white)
                        Text("O ALFABETO É\n DIVIDIDO EM\n DOIS GRUPOS:\n AS VOGAIS E AS\n CONSOANTES.")
                            .font(Font.system(size:15))
                            .padding(.bottom, 22.0)
                    }
                }
                HStack(spacing:20){
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .frame(width: 200, height: 30)
                            Text("VOGAIS")
                                .foregroundColor(.white)
                            
                        }
                        NavigationLink(
                            destination: { VogaisView() },
                            label: {
                                Image("vogais")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                        )
                        
                    }
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                .frame(width: 200, height: 30)
                            Text("CONSOANTES")
                                .foregroundColor(.white)
                        }
                        NavigationLink(
                            destination: { ConsoantesUIView() },
                            label: {
                                Image("consoantes")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                            }
                            )
                    }
                }
            }
        }
    }
}
    
    struct EscolhaDoUsuarioView_Previews: PreviewProvider {
        static var previews: some View {
            EscolhaDoUsuarioView()
        }
    }

