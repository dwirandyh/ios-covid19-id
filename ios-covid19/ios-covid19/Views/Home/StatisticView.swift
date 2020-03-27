//
//  StatisticView.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct StatisticView: View {
    let summary : Summary
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            VStack(alignment: .leading){
                Text("Covid-19 Indonesia").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                HStack{
                    Text("Last updated:").foregroundColor(Color("textColorWhite"))
                    Text(summary.metadata.lastUpdatedAt.formatDate()).foregroundColor(Color.white).fontWeight(.medium)
                }
            }
            
            HStack{
                Tile(title: "Confirmed") {
                    Text("\(self.summary.confirmed.value)")
                        .foregroundColor(Color("textConfirm"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
                
                Tile(title: "Treated") {
                    Text("\(self.summary.activeCare.value)")
                        .foregroundColor(Color("textInCare"))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
            }
            
            HStack{
                Tile(title: "Recovered") {
                    HStack(spacing: 4){
                        Text("\(self.summary.recovered.value)")
                            .foregroundColor(Color("textRecover"))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("(\(self.summary.calculatePercentageRecovered())%)")
                            .foregroundColor(Color("textRecoverPercentage"))
                    }
                }
                
                Tile(title: "Death") {
                    HStack(spacing: 4){
                        Text("\(self.summary.deaths.value)")
                            .foregroundColor(Color("textDied"))
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        Text("(\(self.summary.calculatePercentageDeath())%)")
                            .foregroundColor(Color("textDiedPercentage"))
                    }
                }
            }
            
        }.padding([.top, .bottom], 20)
    }
}

struct Tile<Content: View>: View {
    let title: String
    let content: () -> Content
    
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 12){
                self.content()
                Text(self.title)
                    .foregroundColor(Color("textColorWhite"))
            }
            .frame(width: geometry.size.width, height: geometry.size.height, alignment: .center)
            .background(Color("tile"))
        }
        .frame(height: 110)
    }
}



struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(summary: Summary.defaultValue).background(Color("background"))
    }
}
