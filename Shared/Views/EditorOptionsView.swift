//
//  EditorOptionsView.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-06.
//

import SwiftUI

struct EditorOptionsView: View {
    var body: some View {
        HStack {
            Image(systemName: "sidebar.left")
            Image(systemName: "rectangle.dock")
            Spacer()
            Image(systemName: "hammer")
            Image(systemName: "gear")
            Image(systemName: "sidebar.right")
        }
    }
}

struct EditorOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        EditorOptionsView()
    }
}
