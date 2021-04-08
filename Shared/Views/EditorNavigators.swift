//
//  EditorNavigators.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-06.
//

import SwiftUI

struct EditorNavigators: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "hammer")
            Image(systemName: "gear")
        }
    }
}

struct EditorNavigators_Previews: PreviewProvider {
    static var previews: some View {
        EditorNavigators()
    }
}
