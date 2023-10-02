//
//  ContentView.swift
//  Shimmer-Example
//
//  Created by Ahmed Emad on 02/10/2023.
//

import SwiftUI
import Shimmering

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("BG")
            VStack {
                HStack {
                    Button {
                    } label: {
                        Image("Arrow Left")
                    }
                    Spacer()
                    Text("Mobile Ticket")
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                    Spacer()
                    Button {
                    } label: {
                        Image("Menu button")
                    }
                }
                .padding(.horizontal)
                .shimmering()
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.")
                    .foregroundColor(.white)
                    .fontWidth(.expanded)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal , 74)
                    .padding()
                    .shimmering()
                Image("Mobile Tickets")
                    .shimmering()
                Spacer()
                Image("Reservation")
                    .shimmering()
            }
            Spacer()
            ZStack {
               
            }
        }
        .background(.linearGradient(colors: [Color("primary"), Color("secondary")], startPoint: .topLeading, endPoint: .bottomTrailing))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
