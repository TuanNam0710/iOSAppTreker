//
//  Tip.swift
//  Trekr
//
//  Created by Nam on 11/05/2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
