//
//  UserProfileView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 9.12.2023.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Color(red: 40/255, green: 39/255, blue: 39/255)
                .ignoresSafeArea()
            Color(red: 28/255, green: 29/255, blue: 38/255)
                .offset(y:150)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing: 25) {
                
                //Profile Photo
                Circle()
                    .frame(width: 100, height: 100)
                    .overlay {
                        Circle().stroke(Color(red: 28/255, green: 29/255, blue: 38/255), lineWidth: 4)
                    }
                
                // User info section
                ZStack {
                    Rectangle()
                        .frame(height: 140)
                        .foregroundStyle(Color(red: 38/255, green: 39/255, blue: 50/255))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    VStack(alignment: .leading) {
                        // DisplayName
                        Button(action: {}, label: {
                            Text("piwien")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundStyle(.white)
                        })
                        
                        // Username
                        Text("piwien")
                            .foregroundStyle(Color(.systemGray4))
                        
                        // Status and Edit Button
                        HStack {
                            Button(action: {}, label: {
                                HStack{
                                    Image(systemName: "message.fill")
                                    Text("Add Status")
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal, 34)
                                .background(Color(red: 56/255, green: 57/255, blue: 72/255))
                                .clipShape(Capsule())
                            })
                            Spacer()
                            Button(action: {}, label: {
                                HStack{
                                    Image(systemName: "pencil")
                                    Text("Edit Profile")
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal, 34)
                                .background(Color(red: 56/255, green: 57/255, blue: 72/255))
                                .clipShape(Capsule())
                            })
                        }
                        .font(.footnote)
                        .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                }
                
                // Member Since Section
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(height: 80)
                        .foregroundStyle(Color(red: 38/255, green: 39/255, blue: 50/255))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    VStack(alignment: .leading) {
                        Text("Discord Member Since")
                            .foregroundStyle(.white)
                        Text("26 Feb 2017")
                            .foregroundStyle(Color(.systemGray4))
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
            .offset(y: 48)
            .padding(.horizontal)
        }
    }
}

#Preview {
    UserProfileView()
}
