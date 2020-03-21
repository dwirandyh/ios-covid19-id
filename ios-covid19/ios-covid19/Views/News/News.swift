//
//  News.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct News: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 30){
                VStack(alignment: .leading, spacing: 8){
                    Text("Information").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                    HStack{
                        Text("Latest information about Covid-19").foregroundColor(Color("textColorWhite"))
                    }
                }.padding(.top, 20)
                
                VStack(spacing: 16){
                    NewsItem()
                    
                    NewsItem()
                    
                    NewsItem()
                    
                    NewsItem()
                    
                    NewsItem()
                }
                
                HStack{
                    Spacer()
                }
            }.padding([.trailing, .leading], 20)
        }.background(Color("background"))
    }
}

struct NewsItem: View {
    var body: some View{
        VStack(alignment: .leading, spacing: 8){
            
            HStack(spacing: 4){
                Image(systemName: "timer")
                    .resizable()
                    .frame(width: 10, height: 10)
                    .foregroundColor(Color("textColorWhite"))
                Text("12 Maret 2020")
                    .foregroundColor(Color("textColorWhite"))
                    .font(.system(size: 10))
            }
            
            Text("Daftar Situs Tanggap Koronavirus Pemerintah Daerah")
                .foregroundColor(Color.white)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            Text("Daftar Situs Tanggap Koronavirus Pemerintah Daerah")
                .foregroundColor(Color.white)
                .font(.caption)
                .fontWeight(.thin)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(16)
        .background(Color("tile"))
    }
}

struct News_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            News()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            
            NewsItem()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                .previewDisplayName("iPhone XS Max")
                .background(Color("background"))
        }
    }
}
