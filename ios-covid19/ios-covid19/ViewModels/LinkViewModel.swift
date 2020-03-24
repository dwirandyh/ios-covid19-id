//
//  LinkViewModel.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation
import SwiftUI

class LinkViewModel : ObservableObject {
    
    private let repository: CovidRepository
    
    @Published var links : [ImportantLink] = []
    
    init(repository : CovidRepository = CovidService.instance){
        self.repository = repository
    }
    
    func showImportantLink(){
        self.repository.fetchImportantLink { (links) in
            self.links = links
        }
    }
    
    func openUrl(stringUrl: String){
        guard let url = URL(string: stringUrl) else { return }
        UIApplication.shared.open(url)
    }
}
