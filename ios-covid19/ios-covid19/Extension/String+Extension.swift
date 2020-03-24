//
//  String+Extension.swift
//  ios-covid19
//
//  Created by Dwi Randy Herdinanto on 21/03/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import Foundation

extension String {
    func formatDate() -> String {
        // ISO8601
        let isoDate = self
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: isoDate)
        
        if let formattedDate = date {
            let resultDateFormatter = DateFormatter()
            resultDateFormatter.dateFormat = "MMMM dd, yyyy HH:mm:ss"
            return resultDateFormatter.string(from: formattedDate)
        } else {
            return self
        }
        
    }
}
