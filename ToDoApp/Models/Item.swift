//
//  Item.swift
//  ToDoApp
//
//  Created by Aydogdy Shahyrov on 31/08/2018.
//  Copyright © 2018 Aydogdy Shahyrov. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var done: Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}