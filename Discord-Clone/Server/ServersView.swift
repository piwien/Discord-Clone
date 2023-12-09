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
            ServerChatView()
        }
    }
}

#Preview {
    ServersView()
}
