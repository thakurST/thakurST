//
//  StoryModel.swift
//  SportApp
//
//  Created by SandeepThakur on 01/03/25.
//

import Foundation

struct StoryModel: Codable, Identifiable {

    var id : UUID
    var image: String
    var name: String

    #if DEBUG
    static let example = StoryModel(id: UUID(),
                                    image: "user",
                                    name: "Your Story")
    #endif
}
