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

    var body: some View {
            HStack {
                // Left sidebar
                if showLeftSidebar {
                    VStack {
                        LeftSidebarOptionsView()
                        if showComponents { ComponentsView() }
                        if showHierarchy { HierarchyView() }
                        Spacer()
                    }
                }
                    
                // Main area
                VStack {
                    EditorOptionsView()
                    EditorView()
                    Spacer()
                    if showLogs { LogsView() }
                }
                    
                // Right sidebar
                if showRightSidebar {
                    VStack {
                        RightSidebarOptionsView()
                        if showLibraries { LibrariesView() }
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
