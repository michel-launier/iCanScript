//
//  MainView.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-02.
//

import SwiftUI

struct MainView: View {
    @State private var showLeftSidebar: Bool = true
    @State private var showRightSidebar: Bool = true
    @State private var showHierarchy: Bool = true
    @State private var showComponents: Bool = true
    @State private var showLibraries: Bool = true
    @State private var showLogs: Bool = true

    // Layout attributes
    private let toolbarPadding: CGFloat = 6
    private let navigatorPadding: CGFloat = 1
    
    var body: some View {
            HStack {
                // Left sidebar
                if showLeftSidebar {
                    VStack {
                        LeftToolbar().padding(toolbarPadding)
                        LeftNavigators().padding(navigatorPadding)
                        if showComponents { ComponentsView() }
                        if showHierarchy { HierarchyView() }
                        if showLibraries { LibrariesView() }
                        Spacer()
                    }
                }
                    
                // Main area
                VStack {
                    EditorToolbar().padding(toolbarPadding)
                    EditorNavigators().padding(navigatorPadding)
                    EditorView()
                    Spacer()
                    if showLogs { LogsView() }
                }
                    
                // Right sidebar
                if showRightSidebar {
                    VStack {
                        RightToolbar().padding(toolbarPadding)
                        RightNavigators().padding(navigatorPadding)
                        Spacer()
                    }
                }
            }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
