//
//  MapViewModel.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class MapViewModel : ObservableObject {
    private let repository: MapRepository
    
    @Published var provinces: [Province] = []
    
    init(repository: MapRepository = MapService.instance){
        self.repository = repository
    }
    
    func showProvinceData(){
        self.repository.fetchProvinceData { (result) in
            DispatchQueue.main.async {
                guard let provinceList = result else { return }
                self.provinces = provinceList
            }
        }
    }
}
