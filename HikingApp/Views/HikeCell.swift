//
//  HikeCell.swift
//  HikingApp
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct HikeCell: View {
  let hike: Hike
  
  var body: some View {
    HStack {
      Image(hike.imageUrl)
        .resizable()
        .frame(width: 100, height: 100)
        .cornerRadius(16)
      Text(hike.name)
    }
  }
}

struct HikeCell_Previews: PreviewProvider {
  static var previews: some View {
    HikeCell(hike: Hike(name: "Trail Example", imageUrl: "tom", miles: 5))
  }
}
