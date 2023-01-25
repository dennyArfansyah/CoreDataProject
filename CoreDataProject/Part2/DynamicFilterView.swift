//
//  DynamicFilterView.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 26/01/23.
//

import CoreData
import SwiftUI

struct DynamicFilterView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNamefilter = "A"
    
    var body: some View {
        VStack {
            FilteredView(filterKey: "lastName", filterValue: lastNamefilter) { (singer: Singer) in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
            Button("Add Sample") {
                let taylor = Singer(context: moc)
                taylor.firsName = "Taylor"
                taylor.lastName = "Swift"
                
                let ed = Singer(context: moc)
                ed.firsName = "Ed"
                ed.lastName = "Sheeran"
                
                let adele = Singer(context: moc)
                adele.firsName = "Adele"
                adele.lastName = "Adkins"
                
                try? moc.save()
            }
            
            Button("Show A") {
                lastNamefilter = "A"
            }
            
            Button("Show S") {
                lastNamefilter = "S"
            }
        }
    }
}

struct DynamicFilterView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicFilterView()
    }
}
