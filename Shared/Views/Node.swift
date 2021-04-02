//
//  Node.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-02.
//

import SwiftUI

struct Node: View {
    var node: NodeObject

    var body: some View {
        node.createView()
    }
}

struct NodeObject {
    var title: String
    var width: CGFloat
    var height: CGFloat
    var color: Color
    var scale: CGFloat
    var cornerRadius: CGFloat { 15 * scale }
    
    func createView() -> some View {
        
        ZStack {
            Text(title)
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(color, lineWidth: 1)
                .frame(width: width, height: height)
        }
    }
}

struct Node_Previews: PreviewProvider {
    static var previews: some View {
        Node(node: NodeObject(title: "MyNode", width: 150, height: 100, color: .blue, scale: 1.0))
    }
}
