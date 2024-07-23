//
//  Student.swift
//  Bookworm
//
//  Created by Ayrton Parkinson on 2024/07/22.
//

import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String

    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}
