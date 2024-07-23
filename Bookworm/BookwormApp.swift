//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Ayrton Parkinson on 2024/07/22.
//

import SwiftUI
import SwiftData

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
