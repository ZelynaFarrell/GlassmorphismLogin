//
//  CustomSecureTextField.swift
//  GlassmorphismLogin
//
//  Created by Zelyna Sillas on 9/12/23.
//

import SwiftUI

struct CustomSecureTextField: View {
    let placeholder: String
    @Binding var text: String
    @State private var isSecureTextEntry = true
    @State private var width = CGFloat.zero
    @State private var labelWidth = CGFloat.zero

    var body: some View {
        HStack {
            if isSecureTextEntry {
                SecureField(placeholder, text: $text)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            } else {
                TextField(placeholder, text: $text)
                    .foregroundColor(.white)
                    .font(.system(size: 15))
            }

            Button(action: {
                isSecureTextEntry.toggle()
            }) {
                Image(systemName: isSecureTextEntry ? "eye.slash.fill" : "eye.fill")
                    .foregroundColor(.white.opacity(0.6))
                    .frame(width: 20, height: 20)
            }
        }
        .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
        .background {
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .trim(from: 0, to: 0.55)
                    .stroke(.gray, lineWidth: 1)
                RoundedRectangle(cornerRadius: 5)
                    .trim(from: 0.565 + (0.44 * (labelWidth / width)), to: 1)
                    .stroke(.gray, lineWidth: 1)
                Text(placeholder)
                    .foregroundColor(.white)
                    .overlay(GeometryReader { geo in
                        Color.clear
                            .onAppear {
                                labelWidth = geo.size.width
                            }
                    })
                    .padding(2)
                    .font(.caption).bold()
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .offset(x: 10, y: -10)
            }
        }
        .overlay(GeometryReader { geo in Color.clear.onAppear { width = geo.size.width } })
    }
}


#Preview {
    CustomSecureTextField(placeholder: "placeholder", text: .constant("text"))
}
