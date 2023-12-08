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
            Color(red: 66/255.0, green: 69/255.0, blue: 73/255.0)
                .ignoresSafeArea()
            VStack(spacing: 12) {
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
                        .background(.gray)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    
                }
                .padding(.horizontal)
                .foregroundStyle(.white)
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.gray)
                        .padding(.leading)
                    
                    TextField("", text: $searchText)
                        .padding(.vertical, 8)
                        .tint(Color(.white))
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
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(0...10,id: \.self) {_ in
                            MessagesFriendsBox()
                        }
                    }
                    .padding(.horizontal)
                }
                ScrollView(.vertical) {
                    VStack(spacing: 12) {
                        ForEach(0...10, id: \.self) { _ in
                            RectangleMessagesView()
                        }
                    }
                }
                
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    MessagesView()
}
