//
//  LeftToolbar.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-07.
//

import SwiftUI

struct LeftToolbar: View {
    var body: some View {
        HStack {
            Image(systemName: "sidebar.left").imageScale(.large)
            Spacer()
        }
    }
}

struct LeftToolbar_Previews: PreviewProvider {
    static var previews: some View {
        LeftToolbar()
    }
}
