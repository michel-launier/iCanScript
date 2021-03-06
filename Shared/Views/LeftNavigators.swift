//
//  LeftNavigators.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-06.
//

import SwiftUI

struct LeftNavigators: View {
    var body: some View {
        HStack {
            Image(systemName: "folder")
            Image(systemName: "square.stack.3d.down.right.fill")
            Spacer()
        }
    }
}

struct LeftNavigators_Previews: PreviewProvider {
    static var previews: some View {
        LeftNavigators()
    }
}
