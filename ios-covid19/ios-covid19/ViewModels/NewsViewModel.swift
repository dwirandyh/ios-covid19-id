//
//  NewsViewModel.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 22/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

class NewsViewModel: ObservableObject {
    private let repository: CovidRepository
    
    @Published var news: News?
    
    init(repository: CovidRepository = CovidService.instance){
        self.repository = repository
    }
    
    func showNews(){
//        self.repository.fetchNews { (news, isError) in
//            DispatchQueue.main.async {
//                self.news = news
//            }
//        }
    }
}
