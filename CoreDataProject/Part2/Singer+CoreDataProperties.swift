//
//  Singer+CoreDataProperties.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 26/01/23.
//
//

import Foundation
import CoreData

extension Singer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Singer> {
        return NSFetchRequest<Singer>(entityName: "Singer")
    }

    @NSManaged public var firsName: String?
    @NSManaged public var lastName: String?
    
    public var wrappedFirstName: String {
        firsName ?? "Unknown"
    }
    
    public var wrappedLastName: String {
        lastName ?? "Unknown"
    }

}

extension Singer : Identifiable {

}
