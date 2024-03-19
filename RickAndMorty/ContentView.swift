//
//  ContentView.swift
//  RickAndMorty
//
//  Created by Ekomobong Edeme on 19/03/2024.
//

import SwiftUI

struct ContentView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVGrid(columns: columns) {
                    ZStack {
                        Color.secondary
                        VStack(spacing:10){
                            Image("rick")
                                .resizable()
                                .scaledToFit()
                            Text("Name: Rick")
                                .font(.title3)
                            Text("Species:Human")
                                .font(.title3)
                        }
                        .foregroundStyle(.white)
                        .padding(.bottom)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding()
                    
                }
            }
            .navigationTitle("Rick and Morty")
        }
       
    }
}

#Preview {
    ContentView()
}
