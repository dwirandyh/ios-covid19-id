//
//  ImportantLink.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 24/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct ImportantLink: Identifiable, Decodable {
    let id : UUID = UUID()
    let title: String
    let url: String
}

extension ImportantLink {
    static var defaultValue : [ImportantLink] {
        [
            ImportantLink(title: "Collection of Hoaks Related to Corona", url: "https://www.suara.com/news/2020/03/20/124656/7-link-situs-pantau-perkembangan-virus-corona-di-indonesia"),
            ImportantLink(title: "Whatsapp Chatbot Kominfo", url: "https://wa.me/6281133399000"),
            ImportantLink(title: "Map of Corona referral hospitals in Indonesia", url: "http://siaga.bnpb.go.id/rsrujukancovid19"),
            ImportantLink(title: "WHO", url: "https://www.who.int/emergencies/diseases/novel-coronavirus-2019"),
            ImportantLink(title: "Unicef Indonesia", url: "https://www.unicef.org/indonesia/id/coronavirus"),
            ImportantLink(title: "Local government official site: Bandung", url: "https://covid19.bandung.go.id/"),
            ImportantLink(title: "Local government official site: Bekasi", url: "http://corona.bekasikota.go.id/"),
            ImportantLink(title: "Local government official site: Bogor", url: "http://covid19.kotabogor.go.id/"),
            ImportantLink(title: "Local government official site: Depok", url: "http://ccc-19.depok.go.id/"),
            ImportantLink(title: "Local government official site: Jakarta", url: "https://corona.jakarta.go.id/id"),
            ImportantLink(title: "Local government official site: Jawa Barat", url: "https://pikobar.jabarprov.go.id/"),
            ImportantLink(title: "Local government official site: Jawa Tengah", url: "https://corona.jatengprov.go.id/"),
            ImportantLink(title: "Local government official site: Klaten", url: "http://pantaucorona.klatenkab.go.id/"),
            ImportantLink(title: "Local government official site: NTB", url: "https://corona.ntbprov.go.id/"),
            ImportantLink(title: "Local government official site: Riau", url: "https://corona.riau.go.id/"),
            ImportantLink(title: "Local government official site: Semarang", url: "https://siagacorona.semarangkota.go.id/"),
            ImportantLink(title: "Local government official site: Sumatera Barat", url: "https://corona.sumbarprov.go.id/"),
            ImportantLink(title: "Local government official site: Sumatera Selatan", url: "http://corona.sumselprov.go.id/"),
            ImportantLink(title: "Local government official site: Surabaya", url: "https://lawancovid-19.surabaya.go.id/"),
            ImportantLink(title: "Local government official site: Yogyakarta", url: "https://corona.jogjaprov.go.id/"),
        ]
    }
}
