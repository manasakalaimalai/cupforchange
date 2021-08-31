//
//  QuestionModel.swift
//  Cup For Change
//
//  Created by Manasa Kalaimalai on 23/08/21.
//

import Combine
import Foundation
import CoreGraphics

struct Question: Codable, Identifiable {
    var id: Int
    var question: String?
    var answers: [String]
    var correct: Int?
}

