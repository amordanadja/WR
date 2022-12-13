//
//  AlfabetoCompletoView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 08/12/22.
//

import SwiftUI
import AVFoundation

struct AlfabetoCompletoView: View {
    
    let consoantes = Array ( arrayLiteral: "A","B", "C", "D","E", "F", "G", "H","I", "J", "K", "L", "M", "N","O", "P", "Q", "R", "S", "T","U", "V", "W", "X", "Y", "Z" )
 
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
                
                VStack {
                    VStack {
                    HStack {
                        Spacer()
                        button_de_som()
                            .padding()
                    }}
                   // Spacer()
                    ZStack {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .frame(width: 350, height: 100)
                        Text("AS VOGAIS E CONSOANTES JUNTAS FORMAM O NOSSO ALFABETO, QUE SÃO:")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .padding(50)
                            
                    LazyVGrid(
                        
                        columns: Array(repeating:GridItem(spacing:10), count: 5),
                        spacing: 10
                        
                    ){
                      
                        ForEach(_: consoantes, id: \.self) { consoante in
                            
                            Button {
                                print(consoante)
                                playSound(consoante: consoante)
                            } label: {
                                ZStack {
                                    Rectangle()
                                        .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                                        .aspectRatio(1, contentMode: .fit)
                                        .cornerRadius(20)
                                    
                                    Text("\(consoante)")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .bold()
                                        
                                    
                                }
                            }
                        }
                    }
                        .padding()
                    
                    
                    
                    
                }
                
            }
            
            
        }
        .ignoresSafeArea()
    }
    func playSound(consoante: String) {
        let url = Bundle.main.url(forResource: consoante,withExtension: "mp3")
        
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
        
        
        
    
struct AlfabetoCompletoView_Previews: PreviewProvider {
    static var previews: some View {
        AlfabetoCompletoView()
    }
}
