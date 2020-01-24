//
//  Hike.swift
//  HikingApp
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import Foundation

struct Hike {
  let name: String
  let imageUrl: String
  let miles: Double
}

// Sample Data: Hike.all()
extension Hike {
  static func all() -> [Hike] {
    return [
      Hike(name: "Salmonberry Trail", imageUrl: "sal", miles: 6),
      Hike(name: "Harry Mountain", imageUrl: "tom", miles: 5.8),
      Hike(name: "Tamara Falls", imageUrl: "tam", miles: 4)
    ]
  }
}
