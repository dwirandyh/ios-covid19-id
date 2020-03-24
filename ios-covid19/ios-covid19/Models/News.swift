//
//  News.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 22/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

struct News: Decodable {
    let pageProps: PageProps
}

struct PageProps: Decodable {
    let posts: [Post]
}

struct Post: Decodable, Identifiable {
    let id: Int
    let date_gmt: String
    let modified_gmt: String
    let slug: String
    let type: String
    let title: Title
    let excerpt : Excerpt
}

struct Title: Decodable {
    let rendered: String
}

struct Excerpt: Decodable {
    let rendered: String
}
