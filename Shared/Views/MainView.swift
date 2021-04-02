//
//  MainView.swift
//  iCanScript
//
//  Created by Michel Launier on 2021-04-02.
//

import SwiftUI

struct MainView: View {
    @State var showHierarchy: Bool = true
    @State var showComponents: Bool = true
    @State var showLibraries: Bool = true
    @State var showLogs: Bool = true

    var body: some View {
        VStack {

            HStack {
                // Left sidebar
                VStack {
                    if showComponents { ComponentsView() }
                    if showHierarchy { HierarchyView() }
                }
                
                // Main area
                VStack {
                    OptionsView()
                    EditorView()
                    if showLogs { LogsView() }
                }
                
                // Right sidebar
                if showLibraries { LibrariesView() }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
