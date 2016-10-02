//
//  Geoloc+CoreDataClass.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import Foundation
import CoreData

@objc
public class Geoloc: NSManagedObject {

    static let entityName = "Geoloc"
    
    convenience init(direction: String, latitude: Float, longitude: Float, inContext context : NSManagedObjectContext){
        
        let entity = NSEntityDescription.entity(forEntityName: Geoloc.entityName, in: context)!
        
        self.init(entity: entity, insertInto: context)
        self.direction = direction
        self.latitude = latitude
        self.longitude = longitude
    }
}
