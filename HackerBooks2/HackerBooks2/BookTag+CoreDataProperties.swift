//
//  BookTag+CoreDataProperties.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData


extension BookTag {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<BookTag> {
        return NSFetchRequest<BookTag>(entityName: "BookTag");
    }

    @NSManaged public var book: Book?
    @NSManaged public var tag: Tag?

}
