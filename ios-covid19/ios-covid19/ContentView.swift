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
        UITabBar.appearance().barTintColor = #colorLiteral(red: 0.03935233504, green: 0.03935233504, blue: 0.03935233504, alpha: 1)
    }
    
    
    var body: some View {
        ZStack{
            Color("background").edgesIgnoringSafeArea(.all)
            TabView{
                HomePage().tabItem{
                    Image(systemName: "chart.bar.fill")
                    Text("Home")
                }
                NewsPage().tabItem{
                    Image(systemName: "archivebox.fill")
                    Text("News")
                }
                
                LinkPage().tabItem{
                    Image(systemName: "link")
                    Text("Links")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
