//
//  ContentView.swift
//  AppDemo
//
//  Created by Mark on 04/09/2020.
//

import SwiftUI
import NavigationBarLargeTitleItems

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(1..<50) { index in
                    Text("Sample Row \(String(index))")
                }
            }
            .navigationTitle("Navigation")
            .navigationBarLargeTitleItems(trailing: ProfileIcon())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ProfileIcon: View {
    var body: some View{
        Button(action: {
            print("Profile button was tapped")
        }) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.red)
                .frame(width: 36, height: 36)
        }
        .offset(x: -20, y: 5)
    }
}
