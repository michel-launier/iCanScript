//
//  RightToolbar.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-07.
//

import SwiftUI

struct RightToolbar: View {
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "sidebar.right").imageScale(.large)
        }
    }
}

struct RightToolbar_Previews: PreviewProvider {
    static var previews: some View {
        RightToolbar()
    }
}
