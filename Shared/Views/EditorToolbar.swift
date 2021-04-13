//
//  EditorToolbar.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-07.
//

import SwiftUI

struct EditorToolbar: View {
    var body: some View {
        HStack {
            Image(systemName: "sidebar.left").imageScale(.large)
            Image(systemName: "rectangle.dock").imageScale(.large)
            Spacer()
            Image(systemName: "slider.horizontal.3").imageScale(.large)
            Image(systemName: "sidebar.right").imageScale(.large)
        }
    }
}

struct EditorToolbar_Previews: PreviewProvider {
    static var previews: some View {
        EditorToolbar()
    }
}
