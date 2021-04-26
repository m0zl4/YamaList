//
//  YamaDetail.swift
//  YamaNoList
//
//  Created by M. Abdul Latief -Mz on 09/04/21.
//

import SwiftUI

struct YamaDetail: View {
  var yama : Yama
  
  
    var body: some View {
      ScrollView{
        VStack{
          Spacer(minLength: 95)
          Image(yama.photo)
            .resizable()
            .frame(width: 200, height: 200, alignment: .center)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
          
          Spacer(minLength: 50)
          HStack{
            Text("Nama Yama :")
              .font(.system(size: 23))
              .bold()
              .kerning(0.5)
             
            Spacer()
            Text(yama.nama)
              .font(.system(size: 23))
              .kerning(0.5)
          }
          .frame(width: 350, height: 40, alignment: .center)
          Spacer(minLength: 23)
            
          
          HStack{
            Text("Tinggi Yama :")
              .font(.system(size: 23))
              .bold()
              .kerning(0.5)
             
            Spacer()
            Text(yama.tinggi)
              .font(.system(size: 23))
              .kerning(0.5)
          }
          .frame(width: 350, height: 40, alignment: .center)
          Spacer(minLength: 23)
          
          HStack{
            Text("Tipe Yama :")
              .font(.system(size: 23))
              .bold()
              .kerning(0.5)
             
            Spacer()
            Text(yama.tipe)
              .font(.system(size: 23))
              .kerning(0.5)
              .italic()
          }
          .frame(width: 350, height: 40, alignment: .center)
          Spacer(minLength: 23)
          
          HStack{
            Text("Lokasi Yama :")
              .font(.system(size: 23))
              .bold()
              .kerning(0.5)
             
            Spacer()
            Text(yama.lokasi)
              .font(.system(size: 23))
              .kerning(0.5)
          }
          .frame(width: 350, height: 40, alignment: .center)
        
        }
      }
    }
}

struct YamaDetail_Previews: PreviewProvider {
    static var previews: some View {
        YamaDetail(yama: yama[0])
    }
}
