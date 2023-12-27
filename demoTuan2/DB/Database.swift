//
//  Database.swift
//  demoTuan2
//
//  Created by DucDo on 25/12/2023.
//

import Foundation

class Database {
    static let instance = Database()
    var movies : [Movie] = [
    ]

    private init() {
        for i in 0..<20 {
            switch i % 3 {
            case 0:
                movies.append(Movie(id: self.movies.count + 1, name: "Phim \(i)", image: "Anh1", time: Date.now))
            case 1:
                movies.append(Movie(id: self.movies.count + 1, name: "Phim \(i)", image: "Anh2", time: Date.now))
            default:
                movies.append(Movie(id: self.movies.count + 1, name: "Phim \(i)", image: "Anh3", time: Date.now))
            }
           
        }
    }
}
