//
//  MapPage.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct MapPage: View {
    
    @ObservedObject var mapViewModel: MapViewModel = MapViewModel()
    
    var body: some View {
        VStack{
            MapView(province: self.mapViewModel.provinces)
        }.onAppear {
            self.mapViewModel.showProvinceData()
        }
    }
}

struct MapPage_Previews: PreviewProvider {
    static var previews: some View {
        MapPage()
    }
}
