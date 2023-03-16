//
//  Note.swift
//  Notes Watch App
//
//  Created by Rafael Carvalho on 16/03/23.
//

import Foundation


struct Note: Identifiable, Codable {
    let id: UUID
    let text: String
}
