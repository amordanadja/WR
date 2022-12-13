//
//  AtividadeVogaisView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 18/11/22.
//

import SwiftUI
import AVFAudio


struct AtividadeVogaisView: View {
    let atividadeVogal = "A"
    
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
                        button_de_som(soundName: "atividadevogal")
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
                    Text("QUAL O SOM DESSA VOGAL?")
                        .font(.system(size: 20))
                        .padding(80)
                    
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .aspectRatio(1, contentMode: .fit)
                            .cornerRadius(20)
                        
                        Text("\(atividadeVogal)")
                            .foregroundColor(.white)
                            .font(.system(size: 100))
                            .bold()
                    }
                    .frame(width: 180, height: 220)
                    
                    Spacer()
                    
                    
                }
                
            }
            HStack(spacing: 50){
                circle_do_som()
                circle_do_som()
                circle_do_som()
                
            }
        }
    }
}

struct button_de_som: View {
    
    let soundName: String
    
    var body: some View{
        Button {
            playSound(consoante: soundName)
        } label: {
            Image(systemName: "speaker.wave.3")
                .foregroundColor(.white)
                .font(.title)
        }
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

struct circle_do_som: View{
    
    var body: some View {
        Button {
            print("som")
        } label: {
            Image(systemName: "speaker.wave.2.circle.fill")
                .resizable()
                .scaledToFit()
            
                .frame(width: 70, height: 200)
                .foregroundColor(Color(red:41/255, green:56/255, blue:122/255))
                .font(.title)
            
        }
    }
    
    
}

struct AtividadeVogaisView_Previews: PreviewProvider {
    static var previews: some View {
        AtividadeVogaisView()
    }
}

