//
//  BookTag+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class BookTag: NSManagedObject {
   
    static let entityName = "BookTag"
    
    convenience init(book: Book, tag: Tag, inContext context: NSManagedObjectContext) {
        
        let entity = NSEntityDescription.entity(forEntityName: BookTag.entityName, in: context)!
        
        self.init( entity: entity, insertInto: context)
        self.book = book
        self.tag = tag
        
    }
    

}
