//
//  ConsoantesUIView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 22/11/22.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct ConsoantesUIView: View {
    
    let consoantes = Array ( arrayLiteral: "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z" )
    
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
                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .frame(width: 350, height: 70)
                        Text("O ALFABETO É COMPOSTO POR \nCONSOANTES, QUE SÃO:")
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                    }
                    .padding(50)
                    
                    LazyVGrid(
                        
                        columns: Array(repeating:GridItem(spacing:10), count: 4),
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
                                        .cornerRadius(30)
                                    
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

struct ConsoantesUIView_Previews: PreviewProvider {
    static var previews: some View {
        ConsoantesUIView()
    }
}
