//
//  CovidService.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

typealias SummaryCompletion = (_ summary: Summary, _ isError: Bool) -> Void
typealias NewsCompletion = (_ news: News?, _ isError: Bool) -> Void
typealias ImportantLinkCompletion = (_ links: [ImportantLink]) -> Void

protocol CovidRepository {
    func fetchSummary(completion: @escaping SummaryCompletion)
    func fetchNews(completion: @escaping NewsCompletion)
    func fetchImportantLink(completion: @escaping ImportantLinkCompletion)
}

class CovidService: CovidRepository {
    
    static let instance: CovidService = CovidService()
    
    private let urlSession = URLSession.shared
    
    func fetchSummary(completion: @escaping SummaryCompletion) {
        let url = self.generateUrl(path: KawalCovidUrl.SUMMARY)
        self.urlSession.dataTask(with: url){ (data, response, error) in
            if error != nil {
                completion(Summary.defaultValue, true)
            }else {
                do {
                    let result = try JSONDecoder().decode(Summary.self, from: data!)
                    completion(result, false)
                }catch {
                    completion(Summary.defaultValue, true)
                }
            }
        }.resume()
    }
    
    func fetchNews(completion: @escaping NewsCompletion){
        let url = self.generateUrl(path: KawalCovidUrl.NEWS)
        self.urlSession.dataTask(with: url){ (data, response, error) in
            if error != nil {
                completion(nil, true)
            } else {
                do {
                    let result = try JSONDecoder().decode(News.self, from: data!)
                    completion(result, false)
                }catch {
                    completion(nil, true)
                }
            }
        }
    }
    
    func fetchImportantLink(completion: @escaping ImportantLinkCompletion) {
        let importantLink = ImportantLink.defaultValue
        completion(importantLink)
    }
    
    private func generateUrl(path: String) -> URL{
        let url = "\(KawalCovidUrl.BASE_URL)/\(path)"
        return URL(string: url)!
    }
}

struct KawalCovidUrl {
    static let BASE_URL = "https://kawalcovid19.harippe.id"
    static let SUMMARY = "api/summary"
    static let NEWS = "das"
}
