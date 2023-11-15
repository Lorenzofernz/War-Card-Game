//
//  ContentView.swift
//  War Card Game
//
//  Created by Lorenzo Fernandez on 11/11/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        
        ZStack{
            
            Image("background-cloth")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button{ deal()}
                label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing:30){
                        Text("Player")
                            .font(.system(size: 22))
                        Text(String(playerScore))
                            .font(.system(size: 40))
                    }.foregroundColor(.white)
                    Spacer()
                    VStack(spacing:30){
                        Text("CPU")
                            .font(.system(size: 22))
                        Text(String(cpuScore))
                            .font(.system(size: 40))

                    }.foregroundColor(.white)
                    Spacer()
                }
                .padding()
                Spacer()
            }.padding()
        }
    }
    func deal(){
        // Randomize the player's card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpu's card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // Add 1 to cpu score
            cpuScore += 1
        }
        else{
            // Tie
        
        }
        
    }
    
}

#Preview {
    ContentView()
}
