//
//  UserRowView.swift
//  Twitter Clone
//
//  Created by Fahim on 14/7/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)

            VStack(alignment: .leading, spacing: 4) {
                Text("Joker")
                    .font(.subheadline).bold()
                    .foregroundColor(Color(.black))

                Text("Heath Ledger")
                    .font(.subheadline).bold()
                    .foregroundColor(Color(.gray))
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
