//
//  ContentView.swift
//  GlassmorphismLogin
//
//  Created by Zelyna Sillas on 9/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isNewUser: Bool = false
    
    var body: some View {
        VStack {
            VStack(spacing: 12) {
                Text("Welcome to")
                    .font(.title2).bold()
                    .foregroundStyle(.white.opacity(0.8))
                    .padding(.bottom, -15)
                
                Text("SyntaxFlow")
                    .font(.title.width(.expanded)).bold()
                    .padding(.bottom, 20)
                
                VStack(alignment: .leading, spacing: 8) {
                    
                    CustomTextField(placeholder: "Email", text: $email)
                        .padding(.bottom, 20)
                    
                    CustomSecureTextField(placeholder: "Password", text: $password)
                    
                    Button {
                    } label: {
                        Text(isNewUser ? "Sign Up" : "Log In")
                            .font(.title3.weight(.semibold))
                            .foregroundStyle(.blue)
                            .padding(.vertical, 12)
                            .frame(maxWidth: .infinity)
                            .background(.white.gradient)
                            .cornerRadius(8)
                    }
                    .padding(.top)
                }
                
                HStack(spacing: 15) {
                    Button {
                    } label: {
                        Label("Gmail", systemImage: "envelope.fill")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background {
                                GlassBlurView(removeAllFilters: false)
                                    .background(.white.opacity(0.2))
                            }
                            .cornerRadius(8)
                    }
                    
                    Button {
                    } label: {
                        Label("Apple", systemImage: "applelogo")
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background {
                                GlassBlurView(removeAllFilters: false)
                                    .background(.white.opacity(0.2))
                            }
                            .cornerRadius(8)
                    }
                }
                .foregroundStyle(.white)
                
                Rectangle()
                    .frame(height: 1.5)
                    .foregroundColor(.white.opacity(0.4))
                    .padding(.top, 15)
                
                HStack(spacing: 5) {
                    Text(isNewUser ? "Already have an account?" : "Don't have an account?")
                        .font(.subheadline)
                        .foregroundColor(.white)
                    
                    Button {
                        isNewUser.toggle()
                    } label: {
                        Text(isNewUser ? "Log In" : "Sign Up")
                            .font(.headline).bold()
                            .foregroundColor(.yellow)
                    }
                }
            }
            .animation(.smooth, value: isNewUser)
            .foregroundStyle(.white)
            .padding(.horizontal, 30)
            .padding(.top, 35)
            .padding(.bottom, 25)
            .background {
                GlassBlurView(removeAllFilters: true)
                    .blur(radius: 6, opaque: true)
            }
            .clipShape(.rect(cornerRadius: 10, style: .continuous))
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.white.opacity(0.3), lineWidth: 1.5)
            }
            .shadow(color: .black.opacity(0.2), radius: 10)
            .padding(.horizontal, 40)
            .background {
                shapes
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .preferredColorScheme(.dark)
        .background {
            Rectangle()
                .fill(.black.gradient)
                .ignoresSafeArea()
        }
    }
    var shapes: some View {
        ZStack {
            Image(.spline)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .offset(x: 170, y: 110)
            
            Circle()
                .fill(
                    .linearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 150, height: 150)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(x: 55, y: -55)
            
            Circle()
                .fill(
                    .linearGradient(colors: [.purple, .indigo], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 50, height: 50)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .offset(x: 70, y: -70)
            
            Circle()
                .fill(
                    .linearGradient(colors: [.blue, .green], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 30, height: 30)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .offset(x: -100, y: -100)
            
            Circle()
                .fill(
                    .linearGradient(colors: [.green, .blue], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .offset(x: -70, y: -240)
            
            
            Circle()
                .fill(
                    .linearGradient(colors: [.indigo, .purple], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 70, height: 70)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .offset(x: 110, y: -170)
            
            
            Circle()
                .fill(
                    .linearGradient(colors: [.indigo, .purple], startPoint: .top, endPoint: .bottom)
                )
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
                .offset(x: 75, y: 170)
        }
    }
}

#Preview {
    ContentView()
}
