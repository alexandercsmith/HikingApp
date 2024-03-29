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
    NavigationView {
      List(self.hikes, id: \.name) { hike in
        NavigationLink(destination: HikeDetail(hike: hike)) {
          HikeCell(hike: hike)
        }
      }
    .navigationBarTitle("Hiking Log")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
