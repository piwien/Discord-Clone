//
//  MenuView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 9.12.2023.
//

import SwiftUI

struct Server: Identifiable {
    var id: Int?
    let createdAt: Date
    let name: String
}

struct Channel: Identifiable, Equatable {
    var id: Int?
    let createdAt: Date
    let name: String
}

struct MenuView: View {
    
    @State var selectedChannel: Channel?
    @State var showChannels = true
    
    var mockServers = [
        Server(id: 1, createdAt: .now, name: "Gaming"),
        Server(id: 2, createdAt: .now, name: "Movies"),
        Server(id: 3, createdAt: .now, name: "TV Series"),
        Server(id: 4, createdAt: .now, name: "Coding"),
        Server(id: 5, createdAt: .now, name: "School")
    ]
    
    var mockChannels = [
        Channel(id: 1, createdAt: .now, name: "general"),
        Channel(id: 2, createdAt: .now, name: "coding"),
        Channel(id: 3, createdAt: .now, name: "jobs"),
        Channel(id: 4, createdAt: .now, name: "swift"),
        Channel(id: 5, createdAt: .now, name: "podcast")
        
    ]
    
    var body: some View {
        HStack(spacing: 0) {
            ScrollView {
                VStack {
                    ForEach(mockServers) { server in
                        Text(server.name.prefix(1))
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 8)
                            .background {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color("Discord"))
                            }
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 24)
                            .foregroundStyle(.green)
                            .background {
                                Circle()
                                    .fill(.ultraThinMaterial)
                                    .padding(-16)
                            }
                            .padding(.vertical)
                    }
                }
                
                
            }
            .frame(width: 60)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .padding(12)
            .background(.ultraThickMaterial)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Dojo iOS")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Image(systemName: "ellipsis")
                        .fontWeight(.heavy)
                }
                .padding(.bottom, 24)
                .padding(.trailing)
                Button {
                    withAnimation {
                        showChannels.toggle()
                    }
                } label: {
                    HStack {
                        Image(systemName: showChannels ? "chevron.down" : "chevron.right")
                            .frame(width: 24)
                        Text("Text channels")
                            .textCase(.uppercase)
                            .font(.caption)
                            .bold()
                    }
                    
                }
                .foregroundStyle(.gray)
                
                if showChannels {
                    ScrollView(showsIndicators: false)
                    {
                        ForEach(mockChannels) { channel in
                            Button {
                                selectedChannel = channel
                            } label: {
                                HStack {
                                    Image(systemName: "number")
                                    
                                    Text(channel.name)
                                        .font(.title3)
                                        .bold(selectedChannel == channel)
                                }
                                .padding(8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .foregroundStyle(selectedChannel == channel ? .white : .gray)
                                .background {
                                    RoundedRectangle(cornerRadius: 6).fill(selectedChannel == channel ? Color(uiColor: .systemGray3) : .clear)
                                }
                            }
                            
                        }
                    }
                    
                }
                else if let selectedChannel, !showChannels {
                    HStack {
                        Image(systemName: "number")
                        
                        Text(selectedChannel.name)
                            .font(.title3)
                            .bold()
                    }
                    .padding(8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.white)
                    .background {
                        RoundedRectangle(cornerRadius: 6).fill(Color(uiColor: .systemGray3))
                    }
                    
                }
                
            }
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .frame(width: 245)
            .padding(.top, 60)
            .padding()
            .background(Color("BackgroundColor"))
            .ignoresSafeArea()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        
        .preferredColorScheme(.dark)
    }
    
}


#Preview {
    MenuView()
}
