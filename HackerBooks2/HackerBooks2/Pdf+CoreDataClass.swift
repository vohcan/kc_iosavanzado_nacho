//
//  Pdf+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class Pdf: NSManagedObject {

    static let entityName = "Pdf"
    
    convenience init(book: Book, pdfData: NSData, inContext context: NSManagedObjectContext) {
        
        let entity = NSEntityDescription.entity(forEntityName: Pdf.entityName, in: context)!
        
        self.init( entity: entity, insertInto: context)
        self.book = book
        self.pdfData = pdfData
    }
}
