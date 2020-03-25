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
            VStack(alignment: .leading){
                Text("Covid-19 Indonesia").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                HStack{
                    Text("Last updated:").foregroundColor(Color("textColorWhite"))
                    Text(summary.metadata.lastUpdatedAt.formatDate()).foregroundColor(Color.white).fontWeight(.medium)
                }
            }
            HStack{
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.confirmed.value)").foregroundColor(Color("textConfirm")).font(.largeTitle).fontWeight(.bold)
                        Text("Confirmed").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100, height: 80).padding()
                    Spacer()
                }.background(Color("tile"))
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        Text("\(self.summary.activeCare.value)").foregroundColor(Color("textInCare")).font(.largeTitle).fontWeight(.bold)
                        Text("Treated").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100, height: 80)
                        .padding()
                    Spacer()
                }.background(Color("tile"))
            }
            
            HStack{
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        HStack(spacing:4){ Text("\(self.summary.recovered.value)").foregroundColor(Color("textRecover")).font(.largeTitle).fontWeight(.bold)
                            Text("(\(self.summary.percentageRecovered)%)").foregroundColor(Color("textRecoverPercentage"))
                        }
                        Text("Recovered").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100, height: 80).padding()
                    Spacer()
                }.background(Color("tile"))
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack(spacing: 12){
                        HStack(spacing:4){ Text("\(self.summary.deaths.value)").foregroundColor(Color("textDied")).font(.largeTitle).fontWeight(.bold)
                            Text("(\(self.summary.percentageDeath)%)").foregroundColor(Color("textDiedPercentage"))
                        }
                        Text("Death").foregroundColor(Color("textColorWhite"))
                    }.frame(width: 100, height: 80).padding()
                    Spacer()
                }.background(Color("tile"))
            }
        }.padding([.top, .bottom], 20)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView(summary: Summary.defaultValue).background(Color("background"))
    }
}
