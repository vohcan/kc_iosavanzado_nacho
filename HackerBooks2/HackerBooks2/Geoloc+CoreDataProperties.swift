//
//  Geoloc+CoreDataProperties.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData


extension Geoloc {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Geoloc> {
        return NSFetchRequest<Geoloc>(entityName: "Geoloc");
    }

    @NSManaged public var direction: String?
    @NSManaged public var latitude: Float
    @NSManaged public var longitude: Float
    @NSManaged public var notes: NSSet?

}

// MARK: Generated accessors for notes
extension Geoloc {

    @objc(addNotesObject:)
    @NSManaged public func addToNotes(_ value: Note)

    @objc(removeNotesObject:)
    @NSManaged public func removeFromNotes(_ value: Note)

    @objc(addNotes:)
    @NSManaged public func addToNotes(_ values: NSSet)

    @objc(removeNotes:)
    @NSManaged public func removeFromNotes(_ values: NSSet)

}
