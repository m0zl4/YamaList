//
//  ContentView.swift
//  YamaNoList
//
//  Created by M. Abdul Latief -Mz on 09/04/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView{
      YamaList()
        .tabItem{
          Image(systemName: "house.fill")
          Text("Yama")
        }
      Profile()
        .tabItem{
          Image(systemName: "person.fill")
          Text("About")
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
