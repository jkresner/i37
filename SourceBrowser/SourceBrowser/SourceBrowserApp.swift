//
//  SourceBrowserApp.swift
//  SourceBrowser
//
//  Created by JK on 6/7/20.
//

import SwiftUI

@main
struct SourceBrowserApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: SourceBrowserDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
