//
//  FeedView.swift
//  Twitter Clone
//
//  Created by Fahim on 6/7/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false

    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack(spacing: 0) {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetRowView()
                            .padding()
                        Divider()
                    }
                }
            }
            Button {
                showNewTweetView.toggle()
            } label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
