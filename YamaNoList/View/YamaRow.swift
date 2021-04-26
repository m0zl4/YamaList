//
//  YamaRow.swift
//  YamaNoList
//
//  Created by M. Abdul Latief -Mz on 09/04/21.
//

import SwiftUI

struct YamaRow: View {
  var yama : Yama
  
  var body: some View {
    HStack{
      Image(yama.photo)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .frame(width: 80, height: 80)
        .clipShape(Circle())
      
      VStack(alignment: .leading, spacing: 0){
        Text(yama.nama)
          .font(.system(size: 20))
      }
      .padding(.leading, 3)
    }
    .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
  }
}


struct YamaRow_Previews: PreviewProvider {
  static var previews: some View {
    YamaRow(yama: yama[1]).previewLayout(.fixed(width: 400, height: 100))
  }
}
