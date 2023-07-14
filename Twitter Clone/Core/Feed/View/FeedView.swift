//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Fahim on 6/7/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                    Divider()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
