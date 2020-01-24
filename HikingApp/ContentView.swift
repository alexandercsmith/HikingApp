//
//  ContentView.swift
//  HikingApp
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  let hikes = Hike.all()
  
  var body: some View {
    List(self.hikes, id: \.name) { hike in
      HikeCell(hike: hike)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
