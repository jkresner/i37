//
//  SourceBrowserDocument.swift
//  SourceBrowser
//
//  Created by JK on 6/7/20.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static let sourceBrowserDocument =
        UTType(exportedAs: "com.example.SourceBrowser.source")
}

struct SourceBrowserDocument: FileDocument, Codable {
    var name: String
    var text: String
    
    init(text: String = "# Title  \n\n* * *\nBody content.", title: String = "Title") {
        self.text = text
        self.name = title
    }

    static var readableContentTypes: [UTType] { [.sourceBrowserDocument] }

    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        let data = fileWrapper.regularFileContents!
        self = try JSONDecoder().decode(Self.self, from: data)
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
        let data = try JSONEncoder().encode(self)
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
}
