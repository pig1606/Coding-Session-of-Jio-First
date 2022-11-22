//
//  DataModel.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/23.
//

import Foundation

// MARK: - MOVIE DATA MODEL

struct Movie: Hashable, Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var description: String
    var preference: String
}
