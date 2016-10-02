//
//  Note+CoreDataProperties.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData
 

extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note");
    }

    @NSManaged public var creationDate: NSDate?
    @NSManaged public var modificationDate: NSDate?
    @NSManaged public var text: String?
    @NSManaged public var book: Book?
    @NSManaged public var geoloc: Geoloc?
    @NSManaged public var photo: Photo?

}
