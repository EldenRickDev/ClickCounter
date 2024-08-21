//
//  ContentView.swift
//  ClickCounter
//
//  Created by Ricardo Andrés Gatica Collarte on 21-08-24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        ZStack {
            // Fondo que ocupa toda la pantalla
            Color(.systemGray6)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("Click Counter")
                    .font(.custom("Georgia", size: 36))
                    .fontWeight(.bold)
                    .padding()

                Text("\(counter)")
                    .font(.custom("Georgia", size: 60))
                    .fontWeight(.heavy)
                    .foregroundColor(counter % 2 == 0 ? .green : .red)
                    .padding()

                HStack(spacing: 20) {
                    Button(action: {
                        counter -= 1
                    }) {
                        Text("Decrement")
                            .font(.custom("Georgia", size: 20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }

                    Button(action: {
                        counter = 0
                    }) {
                        Text("Reset")
                            .font(.custom("Georgia", size: 20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.red)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }

                    Button(action: {
                        counter += 1
                    }) {
                        Text("Increment")
                            .font(.custom("Georgia", size: 20))
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

