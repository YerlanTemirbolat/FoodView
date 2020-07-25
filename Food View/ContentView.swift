//
//  ContentView.swift
//  Food View
//
//  Created by Admin on 6/27/20.
//  Copyright © 2020 Yerlan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            FoodView()
                .tabItem {
                    Image(systemName: "suit.heart")
                    Text("Food")
                    
            }.tag(0)
            
            Text("Tab Content 2")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                    
            }.tag(1)
            
            Text("Tab Content 3")
                .tabItem {
                    Image(systemName: "bag")
                    Text("Orders")
                    
            }.tag(2)
            
            Text("Tab Content 4")
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Account")
                    
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FoodView: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                TopScrollView()
                
                ListView()
            }
            .navigationBarTitle("Food")
            .navigationBarItems(trailing: Button(action: {
                //
            }, label: {
                Text("Filter")
            }))
        }
    }
}

struct TopScrollView: View {
    
    var body: some View {
        
        VStack {
            
            HeaderView()
            
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    
                    ForEach(0 ..< 5) { item in
                        
                        NavigationLink(destination: Text("New View Coming Soon")) {
                            
                            Image("food")
                                .renderingMode(.original)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.width - 100, height: 140)
                                .cornerRadius(12)
                            
                        }
                    }
                }
                .padding(.leading)
            }
        }
        .listRowInsets(EdgeInsets())
    }
}

struct HeaderView: View {
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                
                Text("Try free")
                    .foregroundColor(.red)
                    .bold()
                
                Text("Crepevine")
                    .font(.title)
                    .bold()
                
                HStack {
                    
                    Text("Fresh Crepes o Free o 38 mins o")
                    
                    Image(systemName: "star")
                    
                    Text("4.6")
                }
                .offset(y: -16)
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct ListView: View {
    
    var body: some View {
        
        ForEach(0 ..< 15) { _ in
            
            NavigationLink(destination: Text("Coming soon!")) {
                
                HStack {
                    
                    VStack(alignment: .leading) {
                        
                        Text("Try Free!")
                            .foregroundColor(.red)
                            .bold()
                        
                        Text("Cafe Brioche")
                            .font(.title)
                            .bold()
                        
                        Text("French food and stuff")
                    }
                    
                    Spacer()
                    
                    Image(systemName: "flame")
                        .font(.largeTitle)
                }
            }
        }
    }
}
