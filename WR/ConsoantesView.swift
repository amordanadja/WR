//
//  ConsoantesView.swift
//  WR
//
//  Created by Ana Beatriz Costa Gomes on 18/11/22.
//

import SwiftUI

struct ConsoantesView: View {
    var body: some View {
        VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                       .fill(Color(red: 48/255, green: 63/255, blue: 129/255))
                       .frame(width: 350, height: 70)
                   Text("O ALFABETO É COMPOSTO POR \nVOGAIS, QUE SÃO:")
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            VStack {
                HStack{
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("B")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 78)
                        
                    }
                    
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("C")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("D")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("F")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    
                }
                
                //.padding(10)
                
                HStack{
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("G")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("H")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("J")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                        
                    }
                    
                    Button {
                        print("Imagem tapped!")
                    } label: {
                        Image("K")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75, height: 75)
                        
                    }
                    
                    
                }
                //.padding(20)
                
                
                VStack{
                    HStack{
                        Button {
                            print("Imagem tapped!")
                        } label: {
                            Image("L")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                            
                        }
                        Button {
                            print("Imagem tapped!")
                        } label: {
                            Image("M")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                            
                        }
                        Button {
                            print("Imagem tapped!")
                        } label: {
                            Image("N")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                            
                        }
                        Button {
                            print("Imagem tapped!")
                        } label: {
                            Image("P")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75)
                            
                        }
                    }
                    //.padding(20)
                    
                    
                    VStack{
                        HStack{
                            Button {
                                print("Imagem tapped!")
                            } label: {
                                Image("Q")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                
                            }
                            Button {
                                print("Imagem tapped!")
                            } label: {
                                Image("R")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                
                            }
                            Button {
                                print("Imagem tapped!")
                            } label: {
                                Image("S")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                
                            }
                            Button {
                                print("Imagem tapped!")
                            } label: {
                                Image("T")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 75, height: 75)
                                
                            }
                        }
                        //.padding(20)
                        
                        
                        VStack{
                            HStack{
                                Button {
                                    print("Imagem tapped!")
                                } label: {
                                    Image("V")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 75, height: 75)
                                    
                                }
                                Button {
                                    print("Imagem tapped!")
                                } label: {
                                    Image("W")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 75, height: 75)
                                    
                                }
                                Button {
                                    print("Imagem tapped!")
                                } label: {
                                    Image("X")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 75, height: 75)
                                    
                                }
                                Button {
                                    print("Imagem tapped!")
                                } label: {
                                    Image("W")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 75, height: 75)
                                    
                                }
                            }
                            //.padding(10)
                            
                            HStack{
                                Button {
                                    print("Imagem tapped!")
                                } label: {
                                    Image("Z")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 80, height: 80)
                                    
                                }
                            }
                        }
                    }
                }
            }
        }
    }

struct ConsoantesView_Previews: PreviewProvider {
    static var previews: some View {
        ConsoantesView()
    }
}
