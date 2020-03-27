//
//  ContentView.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        // Tab bar color
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.03935233504, green: 0.03935233504, blue: 0.03935233504, alpha: 1)
        
        // for navigation bar text color
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.white]
        // For navigation bar background color
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.03935233504, green: 0.03935233504, blue: 0.03935233504, alpha: 1)
    }
    
    
    var body: some View {
        ZStack{
            Color("background").edgesIgnoringSafeArea(.all)
            TabView{
                HomePage().tabItem{
                    TabIcon(title: "Home", icon: Image(systemName: "house.fill"))
                }
                
                MapPage().tabItem{
                    TabIcon(title: "Map", icon: Image(systemName: "map.fill"))
                }.edgesIgnoringSafeArea(.top)
                
                LinkPage().tabItem{
                    TabIcon(title: "Links", icon: Image(systemName: "link"))
                }
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct TabIcon: View {
    let title: String
    let icon: Image
    
    var body: some View {
        VStack {
            self.icon
            Text(title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
