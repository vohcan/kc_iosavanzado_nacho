//
//  CoverPage+CoreDataProperties.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData


extension CoverPage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CoverPage> {
        return NSFetchRequest<CoverPage>(entityName: "CoverPage");
    }

    @NSManaged public var photoData: NSData?
    @NSManaged public var book: Book?

}
