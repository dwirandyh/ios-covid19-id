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
    @Published var isError: Bool = false
    
    init(repository: CovidRepository = CovidService.instance) {
        self.repository = repository
    }
    
    func showSummary(){
        self.repository.fetchSummary { (summary, isError) in
            DispatchQueue.main.async {
                self.isError = isError
                self.summary = summary
            }
        }
    }
}
