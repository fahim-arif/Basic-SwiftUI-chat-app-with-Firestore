//
//  TextArea.swift
//  Twitter Clone
//
//  Created by Fahim on 15/7/23.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String

    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        _text = text

        UITableView.appearance().backgroundColor = .clear
    }

    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .clipShape(Capsule())
            }
            TextEditor(text: $text)
                .padding(4)
        }.font(.body)
    }
}
