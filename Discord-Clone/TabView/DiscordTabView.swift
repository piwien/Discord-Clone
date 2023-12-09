//
//  DiscordTabView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 8.12.2023.
//

import SwiftUI

struct DiscordTabView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(red: 43/255.0, green: 44/255.0, blue: 56/255.0, alpha: 255)
        
        
    }
    var body: some View {
        TabView {
            Text("Servers")
                .tabItem {
                    Image(systemName: "server.rack")
                    
                    Text("Servers")
                }
                .toolbarBackground(.hidden, for: .tabBar)
                .tag(0)
            MessagesView()
                .tabItem {
                    Image(systemName: "message.fill")
                    Text("Messages")
                }
                .toolbarBackground(.hidden, for: .tabBar)
                .tag(1)
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
                .toolbarBackground(.hidden, for: .tabBar)
                .tag(2)
            UserProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("You")
                }
                .toolbarBackground(.hidden, for: .tabBar)
                .tag(3)
        }
        .tint(.white)
    }
}
#Preview {
    DiscordTabView()
}
