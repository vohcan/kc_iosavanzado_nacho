//
//  Tag+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class Tag: NSManagedObject {

    static let entityName = "Tag"
    
    convenience init(name: String, inContext context: NSManagedObjectContext){
        
        let entity = NSEntityDescription.entity(forEntityName: Tag.entityName, in: context)!
        
        self.init(entity: entity, insertInto: context)
        
        self.name = name
        
    }
}
