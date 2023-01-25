//
//  FilteredView.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 26/01/23.
//

import CoreData
import SwiftUI

struct FilteredView<T: NSManagedObject, Content: View>: View {
    @FetchRequest var fetchRequst: FetchedResults<T>
    let content: (T) -> Content
    
    var body: some View {
        List(fetchRequst, id: \.self) { item in
//            Text("Singer: \(singer.wrappedFirstName) \(singer.wrappedLastName)")
            self.content(item)
        }
    }
    
    init(filterKey: String, filterValue: String, @ViewBuilder content: @escaping (T) -> Content) {
        _fetchRequst = FetchRequest<T>(sortDescriptors: [], predicate: NSPredicate(format: "%K BEGINSWITH %@", filterKey, filterValue))
        self.content = content
    }
}

//struct FilteredView_Previews: PreviewProvider {
//    static var previews: some View {
//        FilteredView()
//    }
//}
