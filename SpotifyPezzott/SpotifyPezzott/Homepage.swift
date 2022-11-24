//
//  Homepage.swift
//  SpotifyPezzott
//
//  Created by Antonio Esposito on 17/11/22.
//

import SwiftUI


struct Homepage:View {
    init() {
        UITabBar.appearance().barTintColor = UIColor.black

      }

    var body: some View {
        TabView{
            ContentView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            SearchPage()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
            LibraryPage(CategoryIndex: 0)
                .tabItem {
                    Image("library")
                    Text("Library")
                }
        }.accentColor(.white)
        }
    }

struct HomeP_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
