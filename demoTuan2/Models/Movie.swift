//
//  Movie.swift
//  demoTuan2
//
//  Created by DucDo on 25/12/2023.
//

import Foundation

class Movie {
    var id : Int
    var name : String
    var image : String
    var time : Date
    
    init(id: Int? = nil, name: String? = nil, image: String? = nil, time: Date? = nil) {
        self.id = id ?? Database.instance.movies.count
        self.name = name ?? ""
        self.image = image ?? ""
        self.time = time ?? Date.now
    }
}
extension Movie {
    func toString() {
        print("\(self.id) \(self.name) \(self.image) \(self.time)")
    }
}
