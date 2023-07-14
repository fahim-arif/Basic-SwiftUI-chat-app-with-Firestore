//
//  UserStatsView.swift
//  Twitter Clone
//
//  Created by Fahim on 14/7/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 4) {
            HStack {
                Text("807").bold()
                Text("Following")
                    .font(.subheadline)
            }

            HStack {
                Text("6.5M").bold()
                Text("Followers")
                    .font(.subheadline)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
