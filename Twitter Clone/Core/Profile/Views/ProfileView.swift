//
//  ProfileView.swift
//  Twitter Clone
//
//  Created by Fahim on 13/7/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            headerView
            
            actionButtons
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text("Heath Ledger")
                        .font(.title).bold()
                    
                    Image (systemName: "checkmark.seal.fill")
                        .foregroundColor(Color(.systemBlue))
                }
                
                Text("@joker")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Your moms favorite villain")
                    .font(.subheadline)
                    .padding(.vertical)
                
                HStack (spacing: 24) {
                    HStack {
                        Image(systemName:"mappin.and.ellipse")
                        Text("Gotham, NY")
                    }
                    
                    HStack {
                        Image(systemName:"link")
                        Text("www.joker.com")
                    }.font(.caption)
                        .foregroundColor(.gray)

                }
                
                HStack (spacing: 4) {
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
                .padding(.vertical)
                
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView {
    
    var headerView: some View {
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x:16, y: 12)
                }
                
                Circle()
                    .frame(width: 72, height: 72)
                .offset(x: 16, y: 24)
            }
        }
        .frame(height: 96)
        
    }
    
    var actionButtons: some View {
        HStack (spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button{
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 0.75)
                    )
                
            }
        }
        .padding(.trailing)
    }
}
