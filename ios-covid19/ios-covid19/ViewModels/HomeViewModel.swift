//
//  HomeViewModel.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class HomeViewModel : ObservableObject {
    
    private let repository: CovidRepository
    
    @Published var summary: Summary?
    
    init(repository: CovidRepository = CovidService.instance) {
        self.repository = repository
    }
    
    func showSummary(){
        self.repository.fetchSummary { (summary) in
            DispatchQueue.main.async {
                self.summary = summary
            }
        }
    }
}
