//
//  CoverPage+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData
import UIKit

@objc
public class CoverPage: NSManagedObject {

    static let entityName = "CoverPage"
    
    var image : UIImage?{
        get{
            guard let data = photoData else{
                return nil
            }
            return UIImage(data: data as Data)!
        }
        set{
            guard let img = newValue else{
                photoData = nil
                return
            }
            photoData = UIImageJPEGRepresentation(img, 0.9) as NSData?
        }
    }
    
    convenience init(book: Book, image: UIImage, inContext context: NSManagedObjectContext) {
        
        let entity = NSEntityDescription.entity(forEntityName: CoverPage.entityName, in: context)!
        
        self.init(entity: entity, insertInto: context)
        self.book = book
        self.image = image
    }
    
   
}
