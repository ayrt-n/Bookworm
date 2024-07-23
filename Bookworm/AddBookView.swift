//
//  AddBookView.swift
//  Bookworm
//
//  Created by Ayrton Parkinson on 2024/07/22.
//

import SwiftUI

struct AddBookView: View {
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var dismiss
    
    @Bindable private var newBook = Book(title: "", author: "", genre: "Fantasy", review: "", rating: 3)
    
    let genres = ["Fantasy", "Horror", "Kids", "Mystery", "Poetry", "Romance", "Thriller"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name of book", text: $newBook.title)
                    TextField("Author's name", text: $newBook.author)

                    Picker("Genre", selection: $newBook.genre) {
                        ForEach(genres, id: \.self) {
                            Text($0)
                        }
                    }
                }

                Section("Write a review") {
                    TextEditor(text: $newBook.review)
                    RatingView(rating: $newBook.rating)
                }

                Section {
                    Button("Save") {
                        modelContext.insert(newBook)
                        dismiss()
                    }
                    .disabled(!newBook.isValidBook())
                }
            }
            .navigationTitle("Add Book")
        }
    }
}

#Preview {
    AddBookView()
}
