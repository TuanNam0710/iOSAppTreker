//
//  locations.swift
//  Trekr
//
//  Created by Nam on 26/04/2021.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var primary: Location {
        places[5]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
