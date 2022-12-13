//
//  EscolhaDoUsuarioView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 10/11/22.
//

import SwiftUI
import AVFoundation

struct EscolhaDoUsuarioView: View {
    
    @State var viuVogais: Bool = false
    
    @State var viuConsoantes: Bool = false
    
    
    var body: some View {
        ZStack {
            Color(red: 60/255, green: 94/255, blue: 152/255).ignoresSafeArea()
            VStack {
                VStack{
                    HStack {
                        Spacer()
                        button_de_som()
//                        playSound(key: "escolha")
                    }
                }
                Spacer()
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
                        Group {
                            if viuVogais == false || viuConsoantes == false {
                                Text("O ALFABETO É\n DIVIDIDO EM\n DOIS GRUPOS:\n AS VOGAIS E AS\n CONSOANTES.")
                            } else {
                                Text("AGORA TEMOS O\n ALFABETO COM OS\n DOIS GRUPOS JUNTOS,\n AS VOGAIS E\n AS CONSOANTES.")
                            }
                        }
                        .font(Font.system(size:15))
                        .padding(.bottom, 22.0)
                    }
                }
                HStack(spacing:20){
                    
                    if viuVogais, viuConsoantes {
                        
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                    .frame(width: 200, height: 30)
                                Text("ALFABETO")
                                    .foregroundColor(.white)
                            }
                            NavigationLink(
                                destination: {
                                    AlfabetoCompletoView()
                                },
                                label: {
                                    Image("consoantes")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 200, height: 200)
                                }
                            )
                        }
                        
                        
                    } else {
                        
                        VStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                    .frame(width: 200, height: 30)
                                Text("VOGAIS")
                                    .foregroundColor(.white)
                                
                            }
                            NavigationLink(
                                destination: {
                                    VogaisView()
                                        .onAppear {
                                            viuVogais = true
                                        }
                                },
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
                                destination: {
                                    ConsoantesUIView()
                                        .onAppear {
                                            viuConsoantes = true
                                        }
                                },
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
    func playSound(key: String) {
        let url = Bundle.main.url(forResource: key,withExtension: "mp3")
        
        guard url != nil else{
            return
        }
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        } catch {
            print("error")
        }
    }
}
    
    struct EscolhaDoUsuarioView_Previews: PreviewProvider {
        static var previews: some View {
            EscolhaDoUsuarioView()
        }
    }

