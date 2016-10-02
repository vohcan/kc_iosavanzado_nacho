//
//  Tag+CoreDataProperties.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

extension Tag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tag> {
        return NSFetchRequest<Tag>(entityName: "Tag");
    }

    @NSManaged public var proxy: String?
    @NSManaged public var name: String?
    @NSManaged public var bookTags: NSSet?

}

// MARK: Generated accessors for bookTags
extension Tag {

    @objc(addBookTagsObject:)
    @NSManaged public func addToBookTags(_ value: BookTag)

    @objc(removeBookTagsObject:)
    @NSManaged public func removeFromBookTags(_ value: BookTag)

    @objc(addBookTags:)
    @NSManaged public func addToBookTags(_ values: NSSet)

    @objc(removeBookTags:)
    @NSManaged public func removeFromBookTags(_ values: NSSet)

}
