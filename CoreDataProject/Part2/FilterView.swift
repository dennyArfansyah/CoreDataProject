//
//  FilterView.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 26/01/23.
//

import CoreData
import SwiftUI

struct FilterView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: [], predicate: NSPredicate(format: "name < %@", "F")) var ships: FetchedResults<Ship>
    
    var body: some View {
        VStack {
            List(ships, id:\.self) { ship in
                Text(ship.name ?? "Unknown name")
            }
            
            Button("Add Example") {
                let ship1 = Ship(context: moc)
                ship1.name = "Enterprise"
                ship1.universe = "Star Strek"
                
                let ship2 = Ship(context: moc)
                ship2.name = "Defiant"
                ship2.universe = "Star Strek"
                
                let ship3 = Ship(context: moc)
                ship3.name = "Milenium falcon"
                ship3.universe = "Star Wars"
                
                let ship4 = Ship(context: moc)
                ship4.name = "Executors"
                ship4.universe = "Star Wars"
                
                try? moc.save()
            }
        }
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
