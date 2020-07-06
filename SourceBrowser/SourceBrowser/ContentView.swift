//
//  ContentView.swift
//  SourceBrowser
//
//  Created by JK on 6/7/20.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: SourceBrowserDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(SourceBrowserDocument()))
    }
}
