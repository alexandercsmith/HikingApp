//
//  HikeDetail.swift
//  HikingApp
//
//  Created by Alexander Smith on 1/24/20.
//  Copyright © 2020 Alexander Smith. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
  let hike: Hike
  @State private var zoomed: Bool = false
  
  var body: some View {
    VStack {
      Image(hike.imageUrl)
        .resizable()
        .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
        .onTapGesture {
          withAnimation {
            self.zoomed.toggle()
          }
        }
      Text(hike.name)
      Text(String(format: "%.2f", hike.miles))
    }
    .navigationBarTitle(Text(hike.name), displayMode: .inline)
  }
}

struct HikeDetail_Previews: PreviewProvider {
  static var previews: some View {
    HikeDetail(hike: Hike(name: "Example Trail", imageUrl: "tam", miles: 7.3))
  }
}
