//
//  DetailView.swift
//  ReadMe
//
//  Created by Ojas Jain on 3/23/22.
//

import SwiftUI

struct DetailView: View {
  @ObservedObject var book: Book
  @EnvironmentObject var library: Library
  
  var body: some View {
    VStack(alignment: .leading) {
      HStack(spacing: 16) {
        Button {
          book.readMe.toggle()
        } label: {
          Image(systemName: book.readMe ? "bookmark.fill" : "bookmark")
            .font(.system(size: 48, weight: .light))
        }
        TitleAndAuthorStack(book: book, titleFont: .title, authorFont: .title2)
      }
      ReviewAndImageStack(book: book, image: $library.images[book])
    }
    .onDisappear{
        withAnimation {
            library.sortBooks()
        }
    }
    .padding()
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(book: .init())
      .environmentObject(Library())
      .previewedInAllColorSchemes
  }
}


