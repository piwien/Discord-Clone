//
//  MessagesView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 8.12.2023.
//

import SwiftUI

struct MessagesView: View {
    @State private var searchText = ""
    
    var body: some View {
        ZStack {
            Color(red: 28/255.0, green: 29/255.0, blue: 38/255.0)
                .ignoresSafeArea()
            VStack(spacing: 12) {

                // Messages and "Add Friends"
                HStack{
                    Text("Messages")
                        .font(.title2)
                        .fontWeight(.bold)
                    Spacer()
                    Button {
                        //action
                    } label: {
                        HStack {
                            Image(systemName: "person.fill.badge.plus")
                            Text("Add Friends")
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 130, height: 32)
                        .background(Color(red: 33/255, green: 34/255, blue: 50/255))
                        .overlay {
                            RoundedRectangle(cornerRadius: 20).stroke(.gray, lineWidth: 0.3)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                }
                .padding(.horizontal)
                .foregroundStyle(.white)
                
                
                
                // Scroll View (Search Bar, Active Friends and messages
                ScrollView(.vertical) {
                    VStack(spacing: 12) {
                        // Search Bar
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundStyle(.gray)
                                .padding(.leading)
                            
                            TextField("", text: $searchText)
                                .padding(.vertical, 8)
                                .foregroundStyle(.gray)
                                .overlay(alignment: .leading) {
                                    if searchText.isEmpty {
                                        Text("Search")
                                            .foregroundColor(.gray)
                                            .padding(.leading, 4)
                                    }
                                }
                            
                        }
                        .background(.black)
                        .frame(maxWidth: .infinity)
                        .clipShape(Capsule())
                        .padding(.horizontal)
                        
                        // Active Friends Section
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack{
                                ForEach(0...10,id: \.self) {_ in
                                    MessagesFriendsBox()
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        // Messages
                        ForEach(0...10, id: \.self) { _ in
                            RectangleMessagesView()
                        }
                    }
                }
//                Spacer()
            }
        }
    }
}

#Preview {
    MessagesView()
}
