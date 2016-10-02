//
//  Note+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class Note: NSManagedObject {

    static let entityName = "Note"
    
    convenience init(book:Book, inContext context: NSManagedObjectContext){
        
        let entity = NSEntityDescription.entity(forEntityName: Note.entityName, in: context)!
        
        self.init (entity: entity, insertInto: context)
        self.book = book
        creationDate = NSDate()
        modificationDate = NSDate()
    }
}
