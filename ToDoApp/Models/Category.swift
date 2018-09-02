//
//  Category.swift
//  ToDoApp
//
//  Created by Aydogdy Shahyrov on 31/08/2018.
//  Copyright © 2018 Aydogdy Shahyrov. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
