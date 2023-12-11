//
//  ServersView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 9.12.2023.
//

import SwiftUI

struct ServersView: View {
    @State var showSideMenu = false
    var body: some View {
        ZStack {
            //Menu View
            MenuView()
            
            //ChatView
            ServerChatView(showSideMenu: $showSideMenu)
                .offset(x: showSideMenu ? 340 : 0)
            
            //Color
            Color.black
                .opacity(showSideMenu ? 0.7 : 0)
                .offset(x: showSideMenu ? 340 : 0)
                .ignoresSafeArea()
                .onTapGesture {
                    withAnimation {
                        showSideMenu = false
                    }
                }
        }
        .toolbar(showSideMenu ? .visible : .hidden, for: .tabBar)
    }
}

#Preview {
    ServersView()
}
