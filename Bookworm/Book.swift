//
//  Book.swift
//  Bookworm
//
//  Created by Ayrton Parkinson on 2024/07/22.
//

import Foundation
import SwiftData

@Model
class Book {
    var title: String
    var author: String
    var genre: String
    var review: String
    var rating: Int
    var createdAt: Date?
    
    init(title: String, author: String, genre: String, review: String, rating: Int) {
        self.title = title
        self.author = author
        self.genre = genre
        self.review = review
        self.rating = rating
        self.createdAt = Date.now
    }
    
    func isValidBook() -> Bool {
        if title.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
            author.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
            genre.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty ||
            review.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            return false
        }
        
        return true
    }
    
    func reviewDate() -> String {
        createdAt?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
