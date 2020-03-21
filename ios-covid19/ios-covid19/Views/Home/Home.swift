//
//  Statistics.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @ObservedObject var homeViewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        ScrollView{
            VStack {
                if homeViewModel.summary != nil {
                    StatisticView(summary: self.homeViewModel.summary!)
                }
                
                RequirementView()
            }
            .padding([.trailing, .leading], 20)
            
        }
        .background(Color("background"))
        .onAppear(perform: {
            self.homeViewModel.showSummary()
        })
    }
}


struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Home()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            
            Home()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                .previewDisplayName("iPhone XS Max")
        }
    }
}
