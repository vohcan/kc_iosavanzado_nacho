//
//  Book+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData
import UIKit

@objc
public class Book: NSManagedObject {

    static let entityName = "Book"
    
    convenience init(title: String, imageURL: String, pdfURL: String, image: UIImage, inContext context: NSManagedObjectContext){
        
        let entity = NSEntityDescription.entity(forEntityName: Book.entityName, in: context)!
        
        self.init(entity: entity, insertInto: context)
        self.title = title
        self.imageURL = imageURL
        self.pdfURL = pdfURL
        self.favorite = false
        
        //add cover
        coverPage = CoverPage(book: self, image: image, inContext: context)
        
        
    
    }
}


//MARK: - searchable
extension Book : NSFetchRequestResult{
    
}
