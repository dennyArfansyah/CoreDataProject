//
//  MOCChangesView.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 25/01/23.
//

import SwiftUI

struct MOCChangesView: View {
    @Environment(\.managedObjectContext) var moc
    
    
    var body: some View {
        Button("Save") {
            if moc.hasChanges {
                try? moc.save()
            }
        }
    }
}

struct MOCChangesView_Previews: PreviewProvider {
    static var previews: some View {
        MOCChangesView()
    }
}
