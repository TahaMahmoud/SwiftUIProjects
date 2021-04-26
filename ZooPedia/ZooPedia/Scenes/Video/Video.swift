//
//  Video.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        return "video-\(id)"
    }
}
