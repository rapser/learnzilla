//
//  FloatingBar.swift
//  learningzilla
//
//  Created by miguel tomairo on 24/02/25.
//

import SwiftUI

struct FloatingBar: View {
    
    var body: some View {
        //MARK: - Floating Tab Bar
        VStack {
            Spacer()
            
            HStack(spacing: 0) {
                Spacer()
                
                Button(action: {}) {
                    VStack(spacing: 4) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 22))
                        Text("Home")
                            .font(.caption)
                    }
                    .foregroundColor(.indigo)
                    .frame(maxWidth: .infinity)
                }
                
                Spacer()
                
                Button(action: {}) {
                    VStack(spacing: 4) {
                        Image(systemName: "play.circle")
                            .font(.system(size: 22))
                        Text("Videos")
                            .font(.caption)
                    }
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                }
                
                Spacer()
                
                Button(action: {}) {
                    VStack(spacing: 4) {
                        Image(systemName: "calendar")
                            .font(.system(size: 22))
                        Text("Calendar")
                            .font(.caption)
                    }
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                }
                
                Spacer()
                
                Button(action: {}) {
                    VStack(spacing: 4) {
                        Image(systemName: "message")
                            .font(.system(size: 22))
                        Text("Chat")
                            .font(.caption)
                    }
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity)
                }
                
                Spacer()
            }
            .padding(.vertical, 10)
            .background(Color(uiColor: .darkText))
            .cornerRadius(30)
            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
            .padding(.horizontal, 20)
        }
    }
}

#Preview {
    FloatingBar()
}
