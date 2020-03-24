//
//  Help.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct LinkPage: View {
    
    @ObservedObject var linkViewModel : LinkViewModel = LinkViewModel()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 30){
                VStack(alignment: .leading, spacing: 8){
                    Text("Important Links").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                    HStack{
                        Text("Important link about Covid-19").foregroundColor(Color("textColorWhite"))
                    }
                }.padding(.top, 20)
                
                
                VStack(spacing: 16){
                    ForEach(self.linkViewModel.links){ (link: ImportantLink) in
                        LinkItem(onClick:{
                            self.linkViewModel.openUrl(stringUrl: link.url)
                        }, title: link.title)
                    }
                }
                
                HStack{
                    Spacer()
                }
            }.padding([.trailing, .leading], 20)
        }
        .onAppear(perform: {
            self.linkViewModel.showImportantLink()
        })
            .background(Color("background"))
    }
}

struct LinkItem: View {
    let onClick : () -> Void
    let title: String
    
    var body: some View{
        Button(action: self.onClick){
            HStack(spacing: 8){
                Text(self.title)
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
}

struct Help_Previews: PreviewProvider {
    static var previews: some View {
        LinkPage()
    }
}
