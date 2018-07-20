//
//  ToDoItem.swift
//  ToDoApp
//
//  Created by Gabriel Khouri-Haddad on 7/19/18.
//  Copyright © 2018 Gabriel Khouri-Haddad. All rights reserved.
//

import Foundation

struct TodoItem: Codable {
    
    var title: String
    var completed: Bool
    var createdAt: Date
    var itemIdentifier: UUID
    
    func saveItem() {
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
    
    func deleteItem() {
        DataManager.delete(itemIdentifier.uuidString)
    }
    
    mutating func markAsComplete() {
        self.completed = true
        DataManager.save(self, with: itemIdentifier.uuidString)
    }
}
