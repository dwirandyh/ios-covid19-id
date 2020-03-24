//
//  Statistics.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct HomePage: View {
    
    @State private var showingAlert = true
    @ObservedObject var homeViewModel : HomeViewModel = HomeViewModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack {
                    if homeViewModel.summary != nil {
                        StatisticView(summary: self.homeViewModel.summary!)
                    }
                    
                    RequirementView()
                }
                .padding([.trailing, .leading], 20)
                
            }
            .alert(isPresented: self.$homeViewModel.isError) {
                Alert(title: Text("Someting went wrong"), message: Text("Could not retrieve data from server"), dismissButton: .default(Text("Got it!")))
            }
            .background(Color("background"))
            .navigationBarTitle("Home", displayMode: .inline)
            .onAppear(perform: {
                self.homeViewModel.showSummary()
            })
        }
    }
}


struct Statistics_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomePage()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE")
            
            HomePage()
                .previewDevice(PreviewDevice(rawValue: "iPhone XS Max"))
                .previewDisplayName("iPhone XS Max")
        }
    }
}
