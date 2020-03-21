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
        VStack(alignment: .leading, spacing: 30){
            VStack(alignment: .leading, spacing: 8){
                Text("Covid-19 Indonesia").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                HStack{
                    Text("Last updated:").foregroundColor(Color("textColorWhite"))
                    Text(summary.metadata.lastUpdatedAt).foregroundColor(Color.white).fontWeight(.medium)
                }
            }.padding(.top, 20)
            HStack{
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.confirmed.value)").foregroundColor(Color("textConfirm")).font(.largeTitle).fontWeight(.bold)
                        Text("Confirmed").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100).padding()
                    Spacer()
                }.background(Color("tile"))
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.activeCare.value)").foregroundColor(Color("textInCare")).font(.largeTitle).fontWeight(.bold)
                        Text("Treated").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100)
                        .padding()
                    Spacer()
                }.background(Color("tile"))
            }
            
            HStack{
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.recovered.value)").foregroundColor(Color("textRecover")).font(.largeTitle).fontWeight(.bold)
                        Text("Recovered").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100).padding()
                    Spacer()
                }.background(Color("tile"))
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.deaths.value)").foregroundColor(Color("textDied")).font(.largeTitle).fontWeight(.bold)
                        Text("Death").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100).padding()
                    Spacer()
                }.background(Color("tile"))
            }
            
            HStack{
                Spacer()
                Button(action: {}){
                    Text("Show Daily Statistics")
                }.foregroundColor(Color.white).font(.headline)
                    .padding()
                    .border(Color("tile"), width: 3)
                Spacer()
            }
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(summary: Summary.defaultValue).background(Color("background"))
    }
}
