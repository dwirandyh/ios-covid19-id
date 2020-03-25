//
//  Province.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct Province : Decodable {
    var attributes: ProvinceAttribute
}

struct ProvinceAttribute: Decodable {
    let FID: Int
    let Kode_Provi: Int
    let Provinsi: String
    let Kasus_Posi: Int
    let Kasus_Semb: Int
    let Kasus_Meni: Int
    var latitude: Double?
    var longitude: Double?
}

struct ProvinceLatLang {
    let provinceId: Int
    let provinceName: String
    let latitude: Double
    let longitude: Double
}

extension ProvinceLatLang {
    static var defaultValue : [ProvinceLatLang] {
        [
            ProvinceLatLang(provinceId: 11, provinceName: "Aceh", latitude: 4.695135, longitude: 96.749397),
            ProvinceLatLang(provinceId: 12, provinceName: "Sumatera Utara", latitude: 3.585242, longitude: 98.675598),
            ProvinceLatLang(provinceId: 13, provinceName: "Sumatera Barat", latitude: -0.953730, longitude: 100.351990),
            ProvinceLatLang(provinceId: 14, provinceName: "Riau", latitude: 0.293347, longitude: 101.706818),
            ProvinceLatLang(provinceId: 15, provinceName: "Jambi", latitude: -1.485180, longitude: 102.438049),
            ProvinceLatLang(provinceId: 16, provinceName: "Sumatera Selatan", latitude: -2.991100, longitude: 104.756729),
            ProvinceLatLang(provinceId: 17, provinceName: "Bengkulu", latitude: -3.800640, longitude: 102.256203),
            ProvinceLatLang(provinceId: 18, provinceName: "Lampung", latitude: -4.558580, longitude: 105.406799),
            ProvinceLatLang(provinceId: 19, provinceName: "Kepulauan Bangka Belitung", latitude: -2.741050, longitude: 106.440582),
            ProvinceLatLang(provinceId: 21, provinceName: "Kepulauan Riau", latitude: 1.082828, longitude: 104.030449),
            ProvinceLatLang(provinceId: 31, provinceName: "DKI Jakarta", latitude: -6.211540, longitude: 106.845169),
            ProvinceLatLang(provinceId: 32, provinceName: "Jawa Barat", latitude: -6.914740, longitude: 107.609810),
            ProvinceLatLang(provinceId: 33, provinceName: "Jawa Tengah", latitude: -6.966660, longitude: 110.416656),
            ProvinceLatLang(provinceId: 34, provinceName: "DI Yogyakarta", latitude: -7.797220, longitude: 110.368790),
            ProvinceLatLang(provinceId: 35, provinceName: "Jawa Timur", latitude: -7.289160, longitude: 112.734390),
            ProvinceLatLang(provinceId: 36, provinceName: "Banten", latitude: -6.120090, longitude: 106.150291),
            ProvinceLatLang(provinceId: 51, provinceName: "Bali", latitude: -8.656290, longitude: 115.222092),
            ProvinceLatLang(provinceId: 52, provinceName: "Nusa Tenggara Barat", latitude: -8.583330, longitude: 116.116661),
            ProvinceLatLang(provinceId: 53, provinceName: "Nusa Tenggara Timur", latitude: -10.172400, longitude: 123.577904),
            ProvinceLatLang(provinceId: 61, provinceName: "Kalimantan Barat", latitude: -0.022520, longitude: 109.330299),
            ProvinceLatLang(provinceId: 62, provinceName: "Kalimantan Tengah", latitude: -2.226660, longitude: 113.944160),
            ProvinceLatLang(provinceId: 63, provinceName: "Kalimantan Selatan", latitude: -3.328490, longitude: 114.589203),
            ProvinceLatLang(provinceId: 64, provinceName: "Kalimantan Timur", latitude: -1.265380, longitude: 116.831200),
            ProvinceLatLang(provinceId: 65, provinceName: "Kalimantan Utara", latitude: 2.850000, longitude: 117.383331),
            ProvinceLatLang(provinceId: 71, provinceName: "Sulawesi Utara", latitude: 1.493056, longitude: 124.841263),
            ProvinceLatLang(provinceId: 72, provinceName: "Sulawesi Tengah", latitude: -0.898580, longitude: 119.850601),
            ProvinceLatLang(provinceId: 73, provinceName: "Sulawesi Selatan", latitude: -5.133330, longitude: 119.416656),
            ProvinceLatLang(provinceId: 74, provinceName: "Sulawesi Tenggara", latitude: -3.967480, longitude: 122.594704),
            ProvinceLatLang(provinceId: 75, provinceName: "Gorontalo", latitude: 0.552512, longitude: 123.065491),
            ProvinceLatLang(provinceId: 76, provinceName: "Sulawesi Barat", latitude: -2.699190, longitude: 118.862106),
            ProvinceLatLang(provinceId: 81, provinceName: "Maluku", latitude: -3.656070, longitude: 128.166412),
            ProvinceLatLang(provinceId: 82, provinceName: "Maluku Utara", latitude: 0.788068, longitude: 127.377151),
            ProvinceLatLang(provinceId: 91, provinceName: "Papua Barat", latitude: -0.861520, longitude: 134.078796),
            ProvinceLatLang(provinceId: 94, provinceName: "Papua", latitude: -2.541360, longitude: 140.706390),
        ]
    }
}
