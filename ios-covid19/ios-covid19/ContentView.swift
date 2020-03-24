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
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                
                MapPage().tabItem{
                    Image(systemName: "map.fill")
                    Text("Map")
                }.edgesIgnoringSafeArea(.top)
                
                LinkPage().tabItem{
                    Image(systemName: "link")
                    Text("Links")
                }
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
