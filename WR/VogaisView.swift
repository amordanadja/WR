//
//  VogaisView.swift
//  WR
//
//  Created by Nadja Maria Nascimento de Souza on 10/11/22.
//

import SwiftUI
import AVFoundation

var player: AVAudioPlayer!

struct VogaisView: View {
    
    var vogais: [String] = ["A", "E", "I", "O", "U"]
    
    fileprivate func backgroundGradient() -> some View {
        return LinearGradient(gradient: Gradient(colors:
                                                    [Color(red: 34/255, green: 66/255, blue: 128/255),
                                                     Color(red: 132/255, green: 174/255, blue: 220/255),
                                                     Color(red: 255/255, green: 255/255, blue: 255/255)]),
                              
                              startPoint: .topLeading,
                              endPoint: .bottomLeading)
        .ignoresSafeArea(.all, edges: .all)
    }
    
    fileprivate func textBox() -> some View {
        return ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                .frame(width: 350, height: 70)
            Text("O ALFABETO É COMPOSTO POR \nVOGAIS, QUE SÃO:")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .padding(30)
    }
    
    fileprivate func gridvogais() -> some View {
        return LazyVGrid(
            columns: Array(repeating:GridItem(spacing: 30), count: 3),
            alignment: .center,
            spacing: 30
        ) {
            
            ForEach(vogais, id: \.self) { vogal in
                Button {
                    print(vogal)
                    playSound(vogal: vogal)
                } label: {
                    ZStack {
                        Rectangle()
                            .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                            .aspectRatio(1, contentMode: .fit)
                            .cornerRadius(30)
                         
                            
                        
                        Text("\(vogal)")
                            .foregroundColor(.white)
                            .font(.title)
                            .bold()
                        
                    }
                }
            }
        }
        .padding(30)
    }
    
    func playSound(vogal: String) {
        let url = Bundle.main.url(forResource: vogal,withExtension: "mp3")
        
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
    
    var body: some View {
        VStack() {
            ZStack {
                backgroundGradient()
                
                VStack(alignment: .center, spacing: 90) {
                    textBox()
                    gridvogais()
                }
            }
            
        }
        
        
    }
    
    
    
    
    
    
    struct Vogais: View {
        var body: some View{
            VStack{
                TabView{
                    ContentView()
                    EscolhaDoUsuarioView()
                    VogaisView()
                    AtividadeVogaisView()
                    ConsoantesUIView()
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
            }.background().ignoresSafeArea()
        }
    }
    
    struct VogaisView_Previews: PreviewProvider {
        static var previews: some View {
            Vogais()
        }
    }
}
