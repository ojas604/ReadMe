//
//  ReadMeApp.swift
//  ReadMe
//
//  Created by Ojas Jain on 3/22/22.
//

import SwiftUI

@main
struct ReadMeApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(Library())
    }
  }
}
