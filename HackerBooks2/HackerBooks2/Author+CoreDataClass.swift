//
//  Author+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class Author: NSManagedObject {

    static let entityName = "Author"
    
    convenience init(book: Book, name: String, inContext context: NSManagedObjectContext){
        
        let entity = NSEntityDescription.entity(forEntityName: Author.entityName, in: context)!
        
        self.init(entity: entity, insertInto: context)
        
        addToBooks(book)
        self.name = name
    }
}
