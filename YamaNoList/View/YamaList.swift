//
//  YamaList.swift
//  YamaNoList
//
//  Created by M. Abdul Latief -Mz on 09/04/21.
//

import SwiftUI

struct YamaList: View {
  
  var body: some View {
    
    NavigationView{
      List(yama){ yama in
        NavigationLink(destination: YamaDetail(yama: yama)) {
          HStack{
            Image(yama.photo)
              .resizable()
              .frame(width: 55, height: 55)
              .clipShape(Circle())
              .overlay(Circle().stroke(Color.black, lineWidth: 1.5)).padding(.trailing, 15)
              
            
            VStack(alignment: .leading) {
              Text(yama.nama).font(.system(size: 20)).bold()
              Text(yama.lokasi).font(.system(size: 20))
            }
          }.padding(14)
        }
      }.navigationBarTitle(Text("Daftar Gunung -Mz"))
      
    }
  }
  
  struct YamaList_Previews: PreviewProvider {
    static var previews: some View {
      YamaList()
    }
  }
}
