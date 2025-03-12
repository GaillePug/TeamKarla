//
//  Week.swift
//  SwiftUIBasics
//
//  Created by Teresa Gaille Teo on 2/26/25.
//

import Foundation

struct Day: Hashable {
    var name: String
    var dp: Int
    var bm: Int
    var icon: String
}

class Week {
    static let days: [Day] = [
        Day(name: "Sunday", dp: 30, bm: 130, icon: "sun.rain"),
        Day(name: "Monday", dp: 30, bm: 120, icon: "cloud.bolt.rain"),
        Day(name: "Tuesday", dp: 60, bm: 130, icon: "cloud.rain"),
        Day(name: "Wednesday", dp: 60, bm: 160, icon: "cloud.rain"),
        Day(name: "Thursday", dp: 60, bm: 180, icon: "sun.rain"),
        Day(name: "Friday", dp: 60, bm: 190, icon: "sun.haze"),
        Day(name: "Saturday", dp: 60, bm: 200, icon: "sun.horizon")
    ]
    
}
