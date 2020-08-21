//
//  Food.swift
//  Assignment8_CollectionView
//
//  Created by Tomona Sako on 2020/08/20.
//  Copyright © 2020 Tomona Sako. All rights reserved.
//

import Foundation

struct Restaurant: Decodable {
    let name: String
    let category: Category
    let time: [Time]
    let img : String
    
    enum Category: Decodable {
        case all
        case japanese
        case french
        case italian
        case indian
        case chinese
        case korean
        case brazilian
        case cafe
        case bakery
        case other
    }
    
    enum Time: Decodable {
        case all
        case breakfast
        case lunch
        case dinner
    }
}


extension Restaurant.Category: CaseIterable { }

extension Restaurant.Category: RawRepresentable {
    var rawValue: String {
        switch self {
        case .all: return "All"
        case .japanese: return "Japanese"
        case .french: return "French"
        case .italian: return "Italian"
        case .indian: return "Indian"
        case .chinese: return "Chinese"
        case .korean: return "Korean"
        case .brazilian: return "Brazilian"
        case .cafe: return "Cafe"
        case .bakery: return "Bakery"
        case .other: return "Other"
        }
    }
    
    typealias RawValue = String
    
    init?(rawValue: String) {
        switch rawValue {
            
        case "All": self = .all
        case "Japanese": self = .japanese
        case "French": self = .french
        case "Italian": self = .italian
        case "Indian": self = .indian
        case "Chinese": self = .chinese
        case "Korean": self = .korean
        case "Brazilian": self = .brazilian
        case "Cafe": self = .cafe
        case "Bakery": self = .bakery
        case "Other": self = .other
        default:
            return nil
        }
    }
}



extension Restaurant.Time: CaseIterable { }

extension Restaurant.Time: RawRepresentable {
    var rawValue: String {
        switch self {
        case .all: return "All"
        case .breakfast: return "Breakfast"
        case .lunch: return "Lunch"
        case .dinner: return "Dinner"
        }
    }
    
    typealias RawValue = String
    
    init?(rawValue: String) {
        switch rawValue {
            
        case "All": self = .all
        case "Breakfast": self = .breakfast
        case "Lunch": self = .lunch
        case "Dinner": self = .dinner
        default:
            return nil
        }
    }
}

