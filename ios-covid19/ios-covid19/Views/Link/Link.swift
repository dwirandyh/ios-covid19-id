//
//  Help.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct Link: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 30){
                VStack(alignment: .leading, spacing: 8){
                    Text("Important Links").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                    HStack{
                        Text("Important link about Covid-19").foregroundColor(Color("textColorWhite"))
                    }
                }.padding(.top, 20)
                
                VStack(spacing: 16){
                    LinkItem()
                    
                    LinkItem()
                    
                    LinkItem()
                    
                    LinkItem()
                    
                    LinkItem()
                }
                
                HStack{
                    Spacer()
                }
            }.padding([.trailing, .leading], 20)
        }.background(Color("background"))
    }
}

struct LinkItem: View {
    var body: some View{
        HStack(spacing: 8){
            Text("Peta Rumah Sakit Rujukan di Indonesia")
                .foregroundColor(Color.white)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            HStack(spacing: 4){
                Image(systemName: "arrow.right.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color("textColorWhite"))
            }
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(16)
        .background(Color("tile"))
    }
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        Link()
    }
}
