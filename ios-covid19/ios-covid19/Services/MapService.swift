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
                    let provinces = self.getProvinceLatLang(provinces: result)
                    completion(provinces)
                }catch {
                    completion(nil)
                }
            }
        }.resume()
    }
    
    private func getProvinceLatLang(provinces:[Province]) -> [Province] {
        return provinces.map { (province: Province) -> Province in
            let provinceLatLang = ProvinceLatLang.defaultValue.first { (provinceLatLang) -> Bool in
                return provinceLatLang.provinceId == province.attributes.Kode_Provi
            }

            var mutableProvince = province
            mutableProvince.attributes.latitude = provinceLatLang?.latitude
            mutableProvince.attributes.longitude = provinceLatLang?.longitude
            return mutableProvince
        }
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
