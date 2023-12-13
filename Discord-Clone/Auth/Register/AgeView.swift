//
//  AgeView.swift
//  Discord-Clone
//
//  Created by Berkay Yaşar on 14.12.2023.
//

import SwiftUI

struct AgeView: View {
    @Environment(\.authViewModel) var viewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        @Bindable var viewModel = viewModel
        VStack(spacing: 12) {
            Text("And, how old are you?")
                .font(.title)
                .bold()
                .padding(.leading)
                .padding(.bottom, 24)
            
            Text("Date of birth")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            Button {
                
            } label: {
                Text(viewModel.registerDate.formatted())
                    .bold()
                    .foregroundStyle(.gray)
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color(uiColor: .systemGray4))
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .padding(.horizontal)
            }
            .padding(.bottom)
            
            Button {
                viewModel.createAccount()
            } label: {
                Text("Create an account")
                    .foregroundStyle(.white)
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(Color.discord)
                    .clipShape(RoundedRectangle(cornerRadius: 4))
                    .padding(.horizontal)
            }
            
            Spacer()
            
            DatePicker("", selection: $viewModel.registerDate, displayedComponents: .date)
                .datePickerStyle(.wheel)
                .padding(.horizontal,48)
                .padding(.bottom)
        }
        .navigationBarBackButtonHidden()
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    AgeView()
}
