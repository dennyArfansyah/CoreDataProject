//
//  HashablelView.swift
//  CoreDataProject
//
//  Created by Denny Arfansyah on 25/01/23.
//

import SwiftUI

struct Student: Hashable {
    let name: String
}

struct HashableView: View {
    let students = [Student(name: "Denny"), Student(name: "Arfansyah")]
    
    var body: some View {
        List(students, id: \.self) { student in
            Text(student.name)
        }
    }
}

struct HashableView_Previews: PreviewProvider {
    static var previews: some View {
        HashableView()
    }
}
