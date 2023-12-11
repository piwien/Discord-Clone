//
//  ChatViewForServer.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 9.12.2023.
//

import SwiftUI

struct Message: Identifiable {
    var id: Int?
    let createdAt: Date
    let username: String
    let imageUrl: String
    let text: String
}

struct ChatViewForServer: View {
    @State var message = ""
    var mockMessages = [
        Message(id: 1, createdAt: .now, username: "piwien", imageUrl: "samurai-avatar", text: "Hi guyss"),
        Message(id: 2, createdAt: .now, username: "piwien", imageUrl: "samurai-avatar", text: "I am good"),
        Message(id: 3, createdAt: .now, username: "piwien", imageUrl: "samurai-avatar", text: "Everyone is ok?")
    ]
    var body: some View {
        // Server content
        VStack(alignment: .leading) {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading){
                        Image(systemName: "number")
                            .imageScale(.large)
                            .padding()
                            .background(Circle().fill(Color(uiColor: .systemGray3)))
                            .padding(.bottom, 24)
                        
                        Text("Welcome to general")
                            .font(.title2)
                    }
                    .padding()
                    
                    LazyVStack {
                        ForEach(mockMessages) { message in
                            HStack(alignment: .top) {
                                Image(message.imageUrl)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 48, height: 48)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading) {
                                    HStack {
                                        Text(message.username)
                                            .bold()
                                        Spacer()
                                        Text(message.createdAt.formatted())
                                            .font(.caption)
                                    }
                                    Text(message.text)
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                            .padding(.bottom)
                        }
                    }
                }
            }
            Divider()
            
            // Textfield and Button
            HStack {
                TextField("Message #general", text: $message)
                    .padding()
                    .background(
                        Capsule()
                            .fill(Color(uiColor: .systemGray6))
                    )
                
                Button {
                    // Button action
                } label: {
                    Image(systemName: "paperplane.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 18)
                        .padding(12)
                        .foregroundColor(Color(.systemGray5))
                        .background(Circle().fill(Color.gray))
                }
                .frame(height: 70)
            }
            .padding(.horizontal)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    ChatViewForServer()
}
