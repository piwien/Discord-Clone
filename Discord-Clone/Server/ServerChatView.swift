//
//  ServerChatView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 9.12.2023.
//

import SwiftUI



struct ServerChatView: View {
    @Binding var showSideMenu: Bool
    
    
    var body: some View {
        VStack {
            // Top section
            HStack {
                Button {
                    withAnimation {
                        showSideMenu.toggle()
                    }
                } label: {
                    Image(systemName: "line.3.horizontal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(.white)
                }
                
                Image(systemName: "number")
                
                Text("general")
                    .bold()
                    .font(.callout)
                
                Spacer()
                
                Image(systemName: "person.2.fill")
            }
            .padding()
            .background(Color(uiColor: .systemGray6))
            
            ChatViewForServer()
                .padding(.bottom)
        }
        .padding(.top, 42)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .preferredColorScheme(.dark)
        .background(Color("BackgroundColor"))
        .ignoresSafeArea()
        
    }
}

#Preview {
    ServerChatView(showSideMenu: .constant(false))
}
