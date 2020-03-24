//
//  MapService.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

typealias ProvinceDataCompletion = (_ province: [Province]?) -> Void

protocol MapRepository {
    func fetchProvinceData(completion: @escaping ProvinceDataCompletion)
}

class MapService: MapRepository {
    
    static let instance: MapService = MapService()
    
    private let urlSession: URLSession = URLSession.shared
    
    func fetchProvinceData(completion: @escaping ProvinceDataCompletion) {
        let url = self.generateUrl(path: KawalCoronaUrl.PROVINCE)
        self.urlSession.dataTask(with: url){ (data, response, error) in
            if error != nil {
                completion(nil)
            } else {
                do {
                    let result = try JSONDecoder().decode([Province].self, from: data!)
                    completion(result)
                }catch {
                    completion(nil)
                }
            }
        }.resume()
    }
    
    private func generateUrl(path: String) -> URL {
        let url = "\(KawalCoronaUrl.BASE_URL)/\(path)"
        return URL(string: url)!
    }
    
}

struct KawalCoronaUrl {
    static let BASE_URL = "https://api.kawalcorona.com"
    static let PROVINCE = "indonesia/provinsi/"
}
